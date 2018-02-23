set nocompatible
execute pathogen#infect()
filetype on
syntax on
colorscheme Tomorrow-Night

" start in insert mode
au BufRead,BufNewFile * start

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

" make backspace work like in most other programs (e.g. delete in insert mode)
set backspace=indent,eol,start

"Let's be more clear!
set title               " change the title of the terminal to file name
set history=1000        " more history!
set undolevels=1000     " more undo levels!
set number              " label the numbers of each line
set numberwidth=4       " cap line cout at 99999

" make numbers relative in normal mode
:set relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

nnoremap <C-t> :call NumberToggle()<cr>

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

" Lightline - make it show up with single screen
set laststatus=2
