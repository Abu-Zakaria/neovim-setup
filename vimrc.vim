" Options
let mapleader=" "
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
" set completeopt=noinsert,menuone,preview " Modifies the auto-complete menu to behave more like an IDE.
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
" set number " Shows the line numbers
set number relativenumber
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax enable
set ttyfast " Speed up scrolling in Vim
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4
set ignorecase
set scrolloff=4
set encoding=UTF-8
" set expandtab

" au VimEnter *  NERDTree " open nerdtree automatically

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'Exafunction/codeium.vim' " Codeium AI extension

Plug 'yaegassy/coc-intelephense'

Plug 'mattn/emmet-vim'

Plug 'rust-lang/rust.vim'

" Themes
" Plug 'bluz71/vim-nightfly-guicolors'
Plug 'Rigellute/shades-of-purple.vim'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Plug 'Mofiqul/dracula.nvim'
Plug 'dracula/vim'

Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

" Vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'miyakogi/conoline.vim'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }

Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-q> :TagbarToggle<CR>

" for ctrl.p
" set runtimepath^=~/.vim/bundle/ctrlp.vim

" for pair brackets
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" mapping for emmet.vim
imap <C-l> <C-y>,


" enable nightfly-guicolors Scheme
" colorscheme nightfly
" colorscheme shades_of_purple
" colorscheme tokyonight-night
" colorscheme dracula
" colorscheme catppuccin-macchiato

" set termguicolors

" let g:shades_of_purple_airline = 1
let g:airline_theme='catppuccin'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

nmap <C-e> :NERDTreeFind<CR>

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>gb <cmd>Telescope git_branches<CR>

nnoremap <leader>gd <cmd>Telescope lsp_definitions<CR>
nnoremap <leader>gr <cmd>Telescope lsp_references<CR>

autocmd BufWritePre *.php :call CocAction('format')
autocmd BufWritePre *.css :call CocAction('format')
autocmd BufWritePre *.js :call CocAction('format')

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" codeium
let g:codeium_manual = v:true
let g:codeium_disable_bindings = 1
imap <script><silent><nowait><expr> <TAB> codeium#Accept()
imap <C-e> <Cmd>call codeium#CycleCompletions(1)<CR>
imap <C-q> <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <C-]> <Cmd>call codeium#Complete()<CR>

imap <C-x>   <Cmd>call codeium#Clear()<CR>

" rust
let g:rustfmt_autosave = 1

let g:go_fmt_command = "goimports"

