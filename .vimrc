set nocompatible
filetype off

set encoding=utf-8
set rtp+=~/vimfiles/bundle/vundle

call vundle#begin()
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'puremourning/vimspector'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Valloric/YouCompleteMe'
call vundle#end()            


"##########################################################
"##########################################################


call plug#begin("~/vimfiles/plugged")
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/IndexedSearch'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'davidhalter/jedi-vim'
Plug 'doums/darcula'
call plug#end()

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

set foldmethod=indent
set foldlevel=99


" Fzf ------------------------------

" file finder mapping
nmap ,e :Files<CR>
" tags (symbols) in current file finder mapping
nmap ,g :BTag<CR>
" the same, but with the word under the cursor pre filled
nmap ,wg :execute ":BTag " . expand('<cword>')<CR>
" tags (symbols) in all files finder mapping
nmap ,G :Tags<CR>
" the same, but with the word under the cursor pre filled
nmap ,wG :execute ":Tags " . expand('<cword>')<CR>
" general code finder in current file mapping
nmap ,f :BLines<CR>
" the same, but with the word under the cursor pre filled
nmap ,wf :execute ":BLines " . expand('<cword>')<CR>
" general code finder in all files mapping
nmap ,F :Lines<CR>
" the same, but with the word under the cursor pre filled
nmap ,wF :execute ":Lines " . expand('<cword>')<CR>
" commands finder mapping
nmap ,c :Commands<CR>

let g:vimspector_enable_mappings = 'HUMAN'
set nu
set relativenumber