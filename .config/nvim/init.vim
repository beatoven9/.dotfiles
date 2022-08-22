lua require('init')

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

""""""""""""""Buffer nav""""""""""""""""""""""""
" Close buffer
nnoremap <silent>    <C-c> :bd<CR>

" Next/previous buffer
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprevious<CR>        
nnoremap <C-p> :bd<CR>

set completeopt=menu,menuone,noselect
