"Check for vim plug and plugins, install it if not present

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins
call plug#begin()

	Plug 'lervag/vimtex'
	Plug 'scrooloose/nerdtree'
	Plug 'SirVer/ultisnips'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"	Plug 'valloric/youcompleteme'"
	Plug 'honza/vim-snippets'
	Plug 'flazz/vim-colorschemes'

call plug#end()

"" General vim configs set nu
set nu
set is
set hls
set encoding=utf-8
syntax enable
filetype plugin indent on
colorscheme molokai
"colorscheme abyss

"Enforces transparency
hi Normal guibg=NONE ctermbg=NONE 

" Ultisnips binds"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window."
let g:UltiSnipsEditSplit="vertical"

"" YCM keybinds"
"let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-k>', '<Up>']

" vimtex keybinds"
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=1
let g:vimtex_view_general_viewer='zathura'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_latexmk_programme="/usr/bin/nvr"

"Nerdtree keybinds"
nnoremap <C-f> :NERDTreeToggle<CR>

"COC configs
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
