syntax on
set undofile
let mapleader = "\<Space>"

call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'farmergreg/vim-lastplace'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-sensible'
call plug#end()

map <F1> 1gt
map <F2> 2gt
map <F3> 3gt
map <F4> 4gt
map <F5> 5gt
map <F6> 6gt
map <F7> 7gt
map <F8> 8gt
map <F9> 9gt
map <F10> 10gt
map <F11> 11gt
map <F12> 12gt

" EasyMotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
let  g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)

set textwidth=80
set colorcolumn=80
