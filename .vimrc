execute pathogen#infect()

set nocompatible
set history=1000
set title
set encoding=utf-8
set scrolloff=3
set ttyfast
set laststatus=2
set ff=unix
"set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=tab:>-,trail:-
set list
syntax on

filetype on
filetype plugin on
filetype plugin indent on
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

map <C-p> :NERDTreeToggle<CR>
" automatically close vim if the only window open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>
map <F2> :bprevious<CR>
map <F3> :bnext<CR>

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
