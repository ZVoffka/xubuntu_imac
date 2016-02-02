set nocompatible
set number
set relativenumber
set nocp
set ruler
set laststatus=2
syntax on
set foldmethod=syntax
set filetype=vim
set autoindent
autocmd FileType python runtime! autoload/pythoncomplete.vim
set iskeyword=@,48-57,_,192-255 
set showmatch
set smartindent
set autoindent
set cursorline
"----------------------

execute pathogen#infect("bundle/{Plugin 'Syntastic'}")
syntax on

filetype plugin indent on
"----------------------
"if empty(glob("~/.vim/autoload/plug.vim"))
	execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
"endif
"----------------------
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/delimitMate.vim'
Plug 'scrooloose/syntastic'
call plug#end()
"----------------------
set spelllang=en,ru "проверка арфографи
autocmd FileType plaintext setlocal spell spelllang=ru
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" 256 colors for terminal vim
set t_Co=256
"----------------------

"statr NERDTree---------------------
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"end NERDTree-----------
"
"установка плагина vudle----------------
"
"filetype on 
"filetype plugin on 
"set rtp+=~/.vim/bundle/vundle/
"call vundle#begin()
"Plugin 'scrooloose/nerdtree'
"call vundle#rc()
"
"filetype plugin indent off     " обязательно!
"filetype indent on
"
"репозитории на github
"Bundle 'tpope/vim-fugitive'
"Bundle 'lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'Syntastic'
"Bundle 'scrooloose/nerdtree'
"Bundle 'numbers.vim'
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'
"Bundle 'pangloss/vim-javascript'
"Bundle 'stephpy/vim-php-cs-fixer'

"#Directories for sqp files##
"set backupdir=~/dotvim/vim_backups//
"set directory=~/dotvim/vim_backups//
"set viewdir=~/dotvim/vim_backups//

"#для редактирования простого текста 
set tw=80
source $VIMRUNTIME/macros/justify.vim
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]

"#проверка скобок
set showmatch 

