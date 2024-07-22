set cursorline
set cursorcolumn
:set clipboard+=unnamedplus
:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set encoding=utf-8
:set noswapfile
:set scrolloff=7
:set expandtab
:set autoindent
:set fileformat=unix
:set smartindent
:set clipboard+=unnamedplus
:set list
:set listchars+=trail:·
:set nowrap
filetype indent on

call plug#begin()
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
"Plug 'vimlab/split-term.vim'
Plug 'tpope/vim-surround'
Plug 'https://github.com/preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'smolck/command-completion.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
call plug#end()

"nnoremap <F5> :new | terminal ++rows=1 <CR> :set splitbelow<CR> :resize 1<CR> :term gcc % -o %:r && ./%:r<CR>
"nnoremap <C-n> :NERDTreeToggle<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>\<Esc>" : "\<Esc>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
nmap <F8> :TagbarToggle<CR>

"let NERDTreeShowHidden=1

"function! StartUp()
"   if 0 == argc()
"   NERDTree
"   end
"endfunction

"autocmd VimEnter * call StartUp()

"lua require('command-completion').setup()

function! ToggleNERDTree()
   if exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1
       NERDTreeClose
   else
       NERDTreeFind
   endif
endfunction

nnoremap <C-n> :call ToggleNERDTree()<CR>

colorscheme catppuccin " catppuccin-mocha
colorscheme catppuccin-mocha
let g:airline_theme='base16'
