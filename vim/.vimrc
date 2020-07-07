" TODO: fix blockle
" TODO: fix tmux vim navigator
" TODO: fix ALE

set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin('~/.vim/plugged')

" Collection of color schemes
Plug 'rafi/awesome-vim-colorschemes'

" directory tree
Plug 'scrooloose/nerdtree'

" automatically add ends for ruby
Plug 'tpope/vim-endwise'

" git visual queues
Plug 'Xuyuanp/nerdtree-git-plugin'

" fzf for vim
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" commenting plugin
Plug 'tpope/vim-commentary' 

" closing of parenthisis
Plug 'jiangmiao/auto-pairs'

" ruby plugin
Plug 'vim-ruby/vim-ruby'

" rails plugin
Plug 'tpope/vim-rails'

" git conflict resolution
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'
" git conflict resolution

" neocomplete Plugin
Plug 'Shougo/neocomplete.vim'  

" asynchronous Linter
Plug 'dense-analysis/ale'

" vim tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" git blame
Plug 'zivyangll/git-blame.vim'

" toggle {} -> do end ruby
" Plug 'jgdavey/vim-blockle'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" testing plugin
Plug 'vim-test/vim-test'

" tmux vim
Plug 'benmills/vimux'

" todo lists for .todo
Plug 'aserebryakov/vim-todo-lists'

call plug#end()

"vim test
" make test commands execute using dispatch.vim
let test#strategy = "vimux"
"vim test

" git blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" git blame

" python provider
let g:python3_host_prog = '/Users/lukedanielson/.asdf/shims/python'
" python provider

" deoplete
let g:deoplete#enable_at_startup = 1

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" deoplete

" ale 
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
" ale

" colorscheme
colorscheme gruvbox
" colorscheme

" fzf settings 
nnoremap <silent> <C-z> :FZF<CR>
" fzf settings 
 
"""""""""""""""""""""""""""""" nerd tree settings
let g:NERDTreeWinSize=30

" open nerdtree automatically when vim starts up
autocmd vimenter * if !argc() | NERDTree | endif

" open nerdtree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

" this is the key to jump to the nerdtree window from any other window
map <leader>r :NERDTreeFind<cr> 

" close vim if last window open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" opens current file in the tree 
" autocmd bufenter * :NERDTreeFind<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once
map ] :NERDTreeFind<CR> 

"  this will open nerdtree when vim is open
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif

" closes nerdtree once file has been opened
let NERDTreeQuitOnOpen = 1

" delete the buffer of file that you deleted
let NERDTreeAutoDeleteBuffer = 1

" minimal ui and arrows
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()
"""""""""""""""""""""""""""""" nerd tree settings

" remap tab navigation
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
" remap tab navigation
 
" remap swapping panes to ctl-letter
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" remap swapping panes to ctl-letter

" remap arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" remap arrow keys

" toggles
syntax on
set diffopt+=vertical " opens diffs vertical"
set number
set autoread " autoreloads files
set autowrite " writes automatically to buffers"
set hidden " hides buffers when entering and leaving"
" set foldmethod=indent
filetype plugin indent on
filetype on
filetype indent on
" toggles

" auto commands
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
" auto commands
" macros
" macros

" ctags 
set tags=tags
" ctags 
