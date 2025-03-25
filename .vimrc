set nocompatible
set number
set relativenumber
inoremap jj <esc>
set clipboard=unnamed,unnamedplus
syntax on

"NERDTREE SHIT-------
set guifont=JetBrainsMono\ Nerd\ Font\ 11 
"Nerdtree shortcut
nnoremap <C-n> :NERDTree<CR>
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR> 
nmap <silent> <c-j> :wincmd j<CR> 
nmap <silent> <c-h> :wincmd h<CR> 
nmap <silent> <c-l> :wincmd l<CR>
"show hidden files
let NERDTreeShowHidden=1
set encoding=UTF-8
"-------------------

" Press the space bar to type the : character in command mode.
nnoremap <space> :

"Insert langspel shorcut
nnoremap <leader>le :setlocal spell spelllang=en_gb<CR>
nnoremap <leader>lf :setlocal spell spelllang=fr_fr<CR>

"Enable file type detection and load plugin for that
filetype on
filetype plugin on
filetype indent on

"Don't prompt for saving when switching buffers
set hidden

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" Force saving files that require root permission 
cnoremap w!! w !sudo tee % > /dev/null


"PLUGS.

call plug#begin('~/.vim/plugged')

    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 

call plug#end()

