execute pathogen#infect()
filetype on
syntax on
colorscheme Tomorrow-Night

set colorcolumn=90
set number

let mapleader=" "

" Reload vim config without having to restart the editor
map <leader>s :source ~/.vimrc<CR>

" Keep more info in memory to speed things up
set hidden
set history=100

" Have some logic while indenting
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Automatically remove whitespaces on save
autocmd BufWritePre * : %s/\s\s+$//e

" Search - get Vim to highlight found words
set hlsearch

" Ability to cancel a search with Escape
nnoremap <silent> <Esc> : nohlsearch<Bar>:echo<CR>

" Reopen previously opened file
nnoremap <Leader><Leader> :e#<CR>

" Show matching parenthesis
set showmatch

" =========================================================================
" Plugin configurations

" Command-T
" ignore some files in fuzzy search
set wildignore+=*.log,*.cache
" reindex after creating new file
noremap <Leader>r :CommandTFlush<CR>

