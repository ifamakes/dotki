call plug#begin()
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'farmergreg/vim-lastplace'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'justinmk/vim-sneak'
Plug 'itchyny/lightline.vim'
Plug 'jdsimcoe/abstract.vim'
Plug 'preservim/nerdtree'
Plug 'bling/vim-bufferline'
call plug#end()

colorscheme abstract
autocmd BufRead,BufNewFile *.txt setlocal textwidth=80 colorcolumn=+1
highlight ColorColumn ctermbg=8
inoremap jj <Esc>
map <C-n> :NERDTreeToggle<CR>
set hidden
