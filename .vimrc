set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tfnico/vim-gradle'
Bundle 'tclem/vim-arduino'
Bundle 'wincent/Command-T'
Bundle 'vim-scripts/closetag.vim'
Bundle 'scrooloose/nerdtree'

" General indentation/syntax stuff
syntax on
set expandtab
set tabstop=4
set shiftwidth=4

set path+=**

" Arduino
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" JAVA
Bundle 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat<CR><CR>

" Autoformatting for Java
let g:formatprg_java = "astyle"
let g:formatprg_args_java = "--style=java --style=attach -A2"

" Insert filename within insert mode using \f
:inoremap \fn <C-R>=expand("%:t:r")<CR>

" NERDTree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
