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
"	Plug 'valloric/youcompleteme'
	Plug 'honza/vim-snippets'
	Plug 'flazz/vim-colorschemes'

call plug#end()

" General vim configs set nu
set nu
set is
set hls
set encoding=utf-8
syntax enable
filetype plugin indent on
"colorscheme molokai
colorscheme abyss
"
"Enforces transparency
hi Normal guibg=NONE ctermbg=NONE 

" Ultisnips binds
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" YCM keybinds
let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-k>', '<Up>']

" vimtex keybinds
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=1
let g:vimtex_view_general_viewer='zathura'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_latexmk_programme="/usr/bin/nvr"

"Nerdtree keybinds
nnoremap <C-f> :NERDTreeToggle<CR>
