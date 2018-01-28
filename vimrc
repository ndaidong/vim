color dracula

set nu
"set cursorline

set autoread
set autowrite

if has('mouse')
  set mouse=a
endif

set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

set clipboard=unnamedplus
set undolevels=1000

set encoding=utf-8 nobomb

syntax on
set syntax=whitespace

filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.git', 'node_modules', 'venv']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:ale_sign_column_always = 1

let g:lightline = {}

let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ 'active': {
      \   'left': [
      \               [ 'mode', 'paste' ],
      \               [ 'gitbranch', 'filename', 'readonly', 'modified' ]
      \           ],
      \   'right': [
      \               [ 'linting', 'fileencoding', 'filetype'],
      \            ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'filename': 'LightLineFilename',
      \   'linting': 'LinterStatus',
      \ },
      \ }

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

function! LightLineFilename()
  return expand('%')
endfunction

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['pycodestyle'],
\}

let mapleader=" "
map <leader>s :NERDTree<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>r :source ~/.vim/vimrc<CR>
nmap <leader>t :NERDTreeToggle<CR>
