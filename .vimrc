""" Set the behavior of tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
    
"""linewrapping
set wrap
set linebreak

"""numbers
set number
set relativenumber

" 
" Clear Highlighting
map <F4> :nohl<CR>

"NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.o$']

"Godot Mappings
nnoremap  <leader>n :GodotRun<CR>
nnoremap  <F5> :GodotRunLast<CR>
nnoremap  <F6> :GodotRunCurrent<CR>
nnoremap  <F7> :GodotRunFZF<CR>

""""""""""""""Buffer nav""""""""""""""""""""""
" Close buffer
nnoremap <silent>    <C-c> :bd<CR>
" Next/previous buffer
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprevious<CR>        
nnoremap <C-p> :bd<CR>

set completeopt=menu,menuone,noselect

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'

"""""" LSP stuff must run :LspInstallServer for each language
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'ajh17/vimcompletesme'


call plug#end()

autocmd FileType vim let b:vcm_tab_complete = 'vim'
