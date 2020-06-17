" emnehls .vimrc last updated 04102020

" Installation of vim-plug with plugins
" This is kinda risky because it silently curls from this dude's github
" I am doing this because I'm lazy and it will make it easier to set up on
" each system. May consider commenting out after initial install...

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/preservim/nerdtree'
Plug 'jalvesaq/Nvim-R'
"Plug 'https://gitbub.com/junegunn/goyo.vim'
" Plug 'https://github.com/vim-latex/vim-latex'
call plug#end()

"Setting some settings for vim-latex
filetype plugin on
filetype indent on
let g:tex_flavor='latex'
"set compatible to vi to no so that vim functions like a modern editor
set nocompatible

"Provides tab-completion for searching recusively into subfolders
set path+=** 

"Display all matching files when we tab complete
set wildmenu

"shows absolute line number of current line
set number

"shows relative line numbers
set relativenumber

"enable syntax coloring
syntax on

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

"set highlight searches - type :noh to stop it from highlighting last search
set hls

" Map jk and kj keys to escape for easier switching to normal mode
imap jk <Esc>
imap kj <Esc>

"Disable arrow keys to avoid bad habits
nnoremap <Left> :echo "Use h"<CR>
nnoremap <Right> :echo "Use l"<CR>
nnoremap <Up> :echo "Use k"<CR>
nnoremap <Down> :echo "Use j"<CR>

"set tab width to 4 spaces
set tabstop=4

"set autoindent to on - there may be better ways to do this 04152020
set autoindent

"some commands to allow me to make latex and R markdown files in vim
"spellcheck to leader (slash) s
map <leader>s :setlocal spell! spelling=en_us<CR>
"compiler
map <leader>c :w! \| !compiler <c-r>%<CR>
map <leader>p :!opout <c-r>%<CR><CR>
autocmd BufRead,BufNewFile *tex set filetype=tex

" Making an IDE for LaTeX
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
" autocmd FileType tex inoremap ;Sec \section{<++>}
