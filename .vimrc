syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nocompatible

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

let g:ycm_show_diagnostics_ui = 0
let g:ycm_auto_trigger = 0
set completeopt-=preview
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
let g:airline_left_sep='>'
let g:syntastic_cpp_checkers = ['clang_check', 'gcc']
let g:syntastic_c_include_dirs = [ '../include', 'include', '../Include', 'Include']
let g:airline#extensions#whitespace#enabled = 0

colorscheme gruvbox
set background=dark
set noshowmode

nnoremap <SPACE> <Nop>
let mapleader=" "

"YCM
nnoremap <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <Leader>gf :YcmCompleter FixIt<CR>

map <F2> :NERDTreeToggle<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
noremap <C-i> :bn<CR>
nnoremap <Leader>m :bp<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-p> :Files<CR>
