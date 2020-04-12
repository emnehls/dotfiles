" emnehls .vimrc last updated 04102020
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

