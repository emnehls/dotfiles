" emnehls .config/nvim/init.vim last updated 12032022

" Run this command the first time you start nvim on a new computer!
" Installation of vim-plug with plugins
" This is kinda risky because it silently curls from this dude's github
"  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

source $HOME/.config/nvim/plugins/plugins.vim
" python3 -m pip install --user --upgrade pynvim " Run this the first time on
" a new computer


"General settings   
set nocompatible "set compatible to vi to no so that vim functions like a modern editor
set path+=** "Provides tab-completion for searching recusively into subfolders
set wildmenu "Display all matching files when we tab complete
set number "shows absolute line number of current line
set relativenumber "shows relative line numbers
syntax enable "enable syntax coloring
set incsearch " Enable searching as you type, rather than waiting till you press enter.
set hls "set highlight searches - type :noh to stop it from highlighting last search

"set tab width to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set fileformat=unix

"set autoindent to on - there may be better ways to do this 04152020
set autoindent

"set more logical splitting
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99


" ========= KEYMAPPINGS =========
"remaping local leader and leader - this may take some time to get used to
let mapleader = ";"
let maplocalleader = ","

"Disable arrow keys to avoid bad habits
nnoremap <Left> :echo "Use h"<CR>
nnoremap <Right> :echo "Use l"<CR>
nnoremap <Up> :echo "Use k"<CR>
nnoremap <Down> :echo "Use j"<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Setting some settings for vim-latex
filetype plugin on
filetype indent on
let g:tex_flavor='latex'

"some commands to allow me to make latex and R markdown files in vim
"spellcheck to leader (;) s
map <leader>s :setlocal spell! spelling=en_us<CR>
"compiler
map <leader>c :w! \| !compiler <c-r>%<CR>
map <leader>p :!opout <c-r>%<CR><CR>
autocmd BufRead,BufNewFile *tex set filetype=tex

"for python
au BufNewFile,BufRead *.py
    \ set textwidth=79
    \ set foldmethod=indent
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4

let g:ale_linters = {
    \ 'python': ['flake8', 'pylint'],
    \}
let g:ale_fixers = {
    \ 'python': ['yapf'],
    \}
nmap <F10> :ALEFix<CR>
let g:ale_fix_on_save = 1
let g:ale_disable_lsp = 1
"
"for fullstack
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"vimwiki directory setting

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0 " to restrict vimiwiki to just the path in lists

colorscheme dracula "colorscheme

" Window transparency
hi Normal guibg=NONE ctermbg=NONE


"For deoplete with vimtex
let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})
