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

nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

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
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.git', 'node_modules', 'venv', '-env', '__pycache__']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_meaningful_tab_names = 1
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_synchronize_view = 1
let g:nerdtree_tabs_synchronize_focus = 1
let g:nerdtree_tabs_focus_on_files = 0
let g:nerdtree_tabs_startup_cd = 1
let g:nerdtree_tabs_autofind = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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

function! s:save_buffer() abort
  if empty(&buftype) && !empty(bufname(''))
    let l:savemarks = {
          \ "'[": getpos("'["),
          \ "']": getpos("']")
          \ }

    silent! update

    for [l:key, l:value] in items(l:savemarks)
      call setpos(l:key, l:value)
    endfor
  endif
endfunction

augroup save_buffer
  autocmd!
  autocmd InsertLeave,TextChanged * nested call s:save_buffer()
  autocmd FocusGained,BufEnter,CursorHold * silent! checktime
augroup end

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
map <leader>r :source ~/.vim/vimrc<CR>

map <leader>s :NERDTree<CR>
map <leader>f :NERDTreeFind<CR>
nmap <leader>t :NERDTreeToggle<CR>
map <leader>n <plug>NERDTreeTabsToggle<CR>

nnoremap <F5> :checktime<CR>
