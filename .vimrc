call plug#begin()

	Plug 'lervag/vimtex'
	Plug 'scrooloose/nerdtree'
	Plug 'SirVer/ultisnips'
"	Plug 'valloric/youcompleteme'
	Plug 'honza/vim-snippets'

call plug#end()

set nu
set encoding=utf-8

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-k>', '<Up>']

filetype plugin indent on
syntax enable
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:vimtex_view_enabled=1
let g:vimtex_view_automatic=1
let g:vimtex_view_general_viewer='zathura'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_latexmk_programme="/usr/bin/nvr"

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
