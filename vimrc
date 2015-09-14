""""""""""""""""""""""""""""""""""""""""
"
"  Powered by Vundle.vim
"
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" common
Plugin 'ctrlp.vim'
Plugin 'surround.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-auto-save'
" eye candy
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
" development specific
" Plugin 'mattn/emmet-vim'
" Plugin 'rails.vim'
" Plugin 'maksimr/vim-jsbeautify'

call vundle#end()            " required
filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""
"     ctrlp.vim
""""""""""""""""""""""""""""""""""""""""
  let g:ctrlp_by_filename = 1
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip

  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git)$',
    \ 'file': '\v\.(log|jpg|png|jpeg)$',
    \ }
""""""""""""""""""""""""""""""""""""""""
"     vim-auto-save
""""""""""""""""""""""""""""""""""""""""
  let g:auto_save = 1
  let g:auto_save_in_insert_mode = 0
  " let g:auto_save_no_updatetime = 1
""""""""""""""""""""""""""""""""""""""""
"     emmet-vim
""""""""""""""""""""""""""""""""""""""""
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,eruby EmmetInstall
""""""""""""""""""""""""""""""""""""""""
"     vim-airline
""""""""""""""""""""""""""""""""""""""""
  set laststatus=2
  " enable terminal color
  set t_Co=256
  " enable tabline
  let g:airline#extensions#tabline#enabled = 1
  " use solarized
  let g:airline_theme='solarized'
""""""""""""""""""""""""""""""""""""""""
"     solarized
""""""""""""""""""""""""""""""""""""""""
  colorscheme solarized
  set background=dark
""""""""""""""""""""""""""""""""""""""""
"     vim-jsbeautify
""""""""""""""""""""""""""""""""""""""""
  " " for js
  " autocmd FileType javascript noremap <buffer> <c-h> :call JsBeautify()<cr>
  " " for html
  " autocmd FileType html noremap <buffer> <c-h> :call HtmlBeautify()<cr>
  " " for css or scss
  " autocmd FileType css noremap <buffer> <c-h> :call CSSBeautify()<cr>


""""""""""""""""""""""""""""""""""""""""
"     show whitespace
""""""""""""""""""""""""""""""""""""""""
  set list
  set listchars=trail:+,tab:>-
""""""""""""""""""""""""""""""""""""""""
"     vimrc editing
""""""""""""""""""""""""""""""""""""""""
  map ,e :e ~/.vimrc<CR>
  " When vimrc is edited, reload it
  autocmd! BufWritePost $MYVIMRC source $MYVIMRC | AirlineRefresh
""""""""""""""""""""""""""""""""""""""""
"     buffer switching
""""""""""""""""""""""""""""""""""""""""
  map <tab> :bn<CR>
  map <s-tab> :bp<CR>
""""""""""""""""""""""""""""""""""""""""
"     treat *.md as markdown
""""""""""""""""""""""""""""""""""""""""
  autocmd BufNewFile,BufRead *.md set filetype=markdown
""""""""""""""""""""""""""""""""""""""""
"     encoding && line ending
""""""""""""""""""""""""""""""""""""""""
  set fileformat=unix
  set fileformats=unix,dos
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
""""""""""""""""""""""""""""""""""""""""

syntax on
set ts=2 sw=2 et
set backspace=indent,eol,start
set wildmenu
set incsearch
set hidden
set relativenumber
set number
set cursorline
set nowrap
