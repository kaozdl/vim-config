set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'scrooloose/syntastic'
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
"plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

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
" segun ft (experimental)
" mapea de forma local a cada buffer, dependiente de su tipo de archivo.
" ver :h :map-local
" autocmd permite ejecutar comandos en operaciones e/s
" ver :h au
augroup c_cpp_shortcuts
  autocmd!
  autocmd FileType c nnoremap <buffer> <F6> :! make<CR>
  autocmd FileType cpp nnoremap <buffer> <F6> :! make<CR>
  autocmd FileType python nnoremap <F6> :! ls<CR>
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab
augroup END

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set ttimeoutlen=10
let g:airline_powerline_fonts=0

" Syntastic
set statusline+=%#warningsmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
