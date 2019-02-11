set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'lu-ren/SerialExperimentsLain'
Plugin 'vim-airline/vim-airline-themes'
" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'gryf/pylint-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on

set t_Co=256
set background=dark
set nowrap
set cursorline
colorscheme molokai

" Fix filas vacias en otro color.
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

" Misc
set mouse=a
set hidden
set incsearch
set number
set relativenumber
" coloca pantalla partida hacia la derecha
set splitright
" coloca pantalla partida hacia abajo
set splitbelow
set conceallevel=0

" Atajos
nnoremap <F5> :NERDTreeClose<CR>:bd<CR>
nnoremap <F2> :bp<CR>
nnoremap <F3> :bn<CR>
nnoremap <F12> :NERDTreeToggle<CR>
nnoremap <F4> :Ack<Space>
if has ('nvim') " Nvim only commands
  nnoremap <F9> :split<CR>:terminal<CR>
  :tnoremap <Esc> <C-\><C-n>
endif

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ttimeoutlen=10
let g:airline_powerline_fonts=1
let g:airline_theme='dark'
" Syntastic
set statusline+=%#warningsmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
