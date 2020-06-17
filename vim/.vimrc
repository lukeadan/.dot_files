set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin('~/.vim/plugged')
" gruvbox plugin
Plug 'morhetz/gruvbox'

" directory tree
Plug 'scrooloose/nerdtree'

" fzf for vim
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" ruby plugin
Plug 'vim-ruby/vim-ruby'

" rails plugin
Plug 'tpope/vim-rails'
  

call plug#end()

" nerd tree settings
map — :NERDTreeToggle<CR> “ open/close nerdtree window
map <leader>r :NERDTreeFind<cr> “ this is the key to jump to the nerdtree window from any other window
autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR> “ pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once
 
" remap swapping panes to ctl-letter
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" toggles
syntax on
set number
filetype plugin indent on
filetype on
filetype indent on

" auto commands
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
