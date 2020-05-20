syntax on
set undofile
let mapleader = "\<Space>"
set mouse=a

call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'farmergreg/vim-lastplace'
Plug 'rhysd/vim-clang-format'
Plug 'zah/nim.vim'
Plug 'tpope/vim-sleuth'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ziglang/zig.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-sensible'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
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

colorscheme paramount

" clang-format
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable

" rainbow_parentheses
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

" rust
let g:rustfmt_autosave = 1
