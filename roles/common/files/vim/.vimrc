call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neomake/neomake'
Plug 'danro/rename.vim'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'moll/vim-bbye'
Plug 'josemarluedke/airline-tabline-folder-formatter.vim'
Plug 'tpope/tpope-vim-abolish'
Plug 'tomasiser/vim-code-dark'
Plug 'Valloric/YouCompleteMe'
"language specific
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'hashivim/vim-terraform'
Plug 'pearofducks/ansible-vim'
Plug 'fatih/vim-hclfmt'
Plug 'othree/html5.vim'
Plug 'benjie/local-npm-bin.vim'
Plug 'posva/vim-vue'
Plug 'ambv/black',
call plug#end()
filetype plugin indent on
syntax on
set nocompatible
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set showmatch
set ignorecase
set incsearch
set ruler
set number
set scrolloff=5
set sidescrolloff=5
set backspace=indent,eol,start
set nowrap
set noerrorbells
set visualbell t_vb=
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set nohlsearch
set matchtime=5
set noswapfile
set nobackup
set wildmenu
set laststatus=2
set hidden
nnoremap Q <nop>

set t_Co=256
set t_ut=
colorscheme codedark
set cursorline

map <Space> <Leader>
let timeoutlen = 5

call neomake#configure#automake('w')

" Neomake
let g:neomake_verbose = 1
let g:neomake_open_list = 0
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_python_exe = 'python3'
" Airline

" SETTINGS 
colorscheme codedark
let g:airline_theme = 'codedark'
let g:go_fmt_command = "goimports"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Filebeagle
let g:netrw_liststyle = 1
let g:filebeagle_show_hidden = 1

" Buffers
nnoremap <silent> <Tab>l :bn<CR>
nnoremap <silent> <Tab>h :bp<CR>
nnoremap <silent> <Tab>q :Bdelete<CR>

" Splits
nnoremap <Leader>h <C-w><Left>
nnoremap <Leader>j <C-w><Down>
nnoremap <Leader>k <C-w><Up>
nnoremap <Leader>l <C-w><Right>
nnoremap <Leader>q :wincmd q<CR> " Close
nnoremap <Leader>r :wincmd r<CR> " Rotate
nnoremap <Leader>- <C-w>_ " Max height
nnoremap <Leader>\ <C-w><bar> " Max width Leader+|
nnoremap <Leader>= <C-w>= " Fair defaults
nnoremap <Leader>v :vs<CR>

" Python
"autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufWritePre *.py execute ':Black'
let python_highlight_all=1
" Javascript
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype vue setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" CSS
autocmd Filetype css setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" Handlebars
autocmd Filetype handlebars setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" C#
autocmd Filetype cs setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Ansible
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'

" HCL disable fmt on tf file save
" taken care of by terraform plugin
let g:tf_fmt_autosave = 0

" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"
let g:go_metalinter_autosave = 0

" Erlang
let erlang_highlight_bif = 1
let g:erlangHighlightBif = 1
let g:erlangHighlightFunHead = 1

"JSON
nnoremap <Leader>f :call JsonFormatter()

"Quickfix
noremap <silent><Tab><Up> :cprev<CR>
noremap <silent><Tab><Down> :cnext<CR>
