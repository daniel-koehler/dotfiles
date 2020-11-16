"set background=dark

set incsearch				" search while typing

set showmatch				" highlight matching brackets
set mouse=a

set tabstop=4
set shiftwidth=4

set number					" show line numbers
set cursorline				" highlight current line
set showcmd					" show command in bottom bar

filetype indent on			" load filetype-specific indent files


" Plugins
" Specify directory for vim plugins
call plug#begin('~/.local/share/nvim/plugged')
":PPlug 'neovim/nvim-lspconfig'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" python autocompletion
"let g:deoplete#enable_at_startup = 1

" use nord color scheme
colorscheme nord
let g:airline_theme='nord'	" use nord color scheme
