call plug#begin()
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'bling/vim-bufferline'
Plug 'farmergreg/vim-lastplace'
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-sneak'
Plug 'pangloss/vim-javascript'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-vividchalk'
call plug#end()

set undofile
set hidden
inoremap jj <Esc>

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd BufRead,BufNewFile *.txt setlocal textwidth=80 colorcolumn=+1
highlight ColorColumn ctermbg=8

let g:rustfmt_autosave = 1
let g:prettier#autoformat = 1

colorscheme vividchalk
