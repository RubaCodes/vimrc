:set number "mostra i numeri
":set relativenumber "mostra i numeri relativi
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a "posso selezionare con il mouse
:set cursorline "mostra la linea
:set noswapfile
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
"plugin section
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' "barra dei comandi piu smart
Plug 'https://github.com/catppuccin/nvim' "theme
Plug 'preservim/nerdtree' "file-exploer
"Plug 'ryanoasis/vim-devicons' "icone per nerdtree
Plug 'tpope/vim-commentary' " gcc to commente a line or gc + motion to comment
Plug 'tpope/vim-surround' " vedi repo tpope/vim-surround:
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
"setup colori capppuccin
let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
lua require("catppuccin").setup()
colorscheme catppuccin

"shortcuts nerdtree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" force auto compepeltion vith tab during insertmode
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
