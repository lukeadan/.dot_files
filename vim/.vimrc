set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin('~/.vim/plugged')

" Collection of color schemes
Plug 'rafi/awesome-vim-colorschemes'

" directory tree
Plug 'scrooloose/nerdtree'

" git visual queues
Plug 'Xuyuanp/nerdtree-git-plugin'

" fzf for vim
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" ruby plugin
Plug 'vim-ruby/vim-ruby'

" rails plugin
Plug 'tpope/vim-rails'

" neocomplete Plugin
Plug 'Shougo/neocomplete.vim'  

call plug#end()

" colorscheme
colorscheme gruvbox
" colorscheme

" fzf settings 
nnoremap <silent> <C-z> :FZF<CR>
" fzf settings 
 
"""""""""""""""""""""""""""""" nerd tree settings
" open nerdtree automatically when vim starts up
autocmd vimenter * NERDTree

" open nerdtree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

" this is the key to jump to the nerdtree window from any other window
map <leader>r :NERDTreeFind<cr> 

" close vim if last window open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"autocmd BufWinEnter * NERDTreeFind

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

"""""""""""""""""""""""""""""" nerd tree settings

 
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
set number
filetype plugin indent on
filetype on
filetype indent on
" toggles

" auto commands
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
" auto commands

" ctags 
set tags=tags
" ctags 

