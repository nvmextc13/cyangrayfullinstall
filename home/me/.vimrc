set nocompatible              " be iMproved, required
set hidden
filetype off                  " required
set encoding=utf8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set number                    "show number column
set relativenumber            "number column is relative to cursor
set mouse=a                   "enable mouse
set history=1000              "increasecommand history
" set hlsearch                 " highlight words on search
set showmode                  " always show what mode is in
set statusline=2              "always show statusline
set laststatus=2              "always show statusline even when single file open
set noshowmode                "don't show mode status, because airline does this already
set showcmd                   "show Normal commands in bottom-right
set showmatch                 "highlight matching brackets, commas
syntax on                     "syntax hilighting
filetype plugin indent on
set nowrap                    "no linewrapping
set tabstop=5                 "set tab spacing
set shiftwidth=5              "set indent spacing
set softtabstop=5             "<BS> will remove tabs
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e "remove whitespace when saving

set cursorline           "highlight line cursor is on
set cursorcolumn         "highlight column cursor is on
hi LineNr ctermbg=NONE ctermfg=244 guibg=NONE guifg=244
hi CursorLineNr cterm=NONE ctermbg=234 ctermfg=032 guibg=234 guifg=032
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE guibg=234 guifg=NONE
hi CursorColumn cterm=NONE ctermbg=234 ctermfg=NONE guibg=234 guifg=NONE
hi VertSplit cterm=NONE ctermbg=234 ctermfg=001
hi StatusLineNC cterm=NONE ctermbg=234 ctermfg=001

""""" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'                          "let Vundle manage Vundle, required

Plugin 'L9'                                            "prereq for FuzzyFinder
Plugin 'FuzzyFinder'                                   "
Plugin 'vim-airline/vim-airline'                       "themes
Plugin 'vim-airline/vim-airline-themes'                "themes
     let g:airline_theme='murmur'                      "theme selection
     let g:airline_powerline_fonts = 1                 "required
     let g:airline#extensions#tabline#enabled = 1
Plugin 'scrooloose/nerdtree'                           "nerdtree and colors
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'       "nerdree highlight based on filetype
     let g:NERDTreeFileExtensionHighlightFullName = 1
     let g:NERDTreeExactMatchHighlightFullName = 1
     let g:NERDTreePatternMatchHighlightFullName = 1
     let g:NERDTreeHighlightFolders = 1                "enables folder icon highlighting using exact match
     let g:NERDTreeHighlightFoldersFullName = 1        "highlights the folder name
     let NERDTreeShowHidden=1                          "shows hidden files default, shift+i to toggle
     hi Directory guifg=032 ctermfg=032 ctermbg=NONE   "folder colors
     hi NERDTreeOpenable ctermfg=001                   "arrow colors
Plugin 'tpope/vim-fugitive'                            "git tools
Plugin 'Raimondi/delimitMate'                          "auto close brackets
Plugin 'tomtom/tcomment_vim'                           "instant comments
Plugin 'ctrlpvim/ctrlp.vim'                            "fuzzy search in buffers and files
Plugin 'vim-ctrlspace/vim-ctrlspace'                   "fuzzy search in buffers and files
Plugin 'Lokaltog/vim-easymotion'                       "jump around documents using letter shortcuts
     let g:EasyMotion_leader_key = '<Leader><Leader>'  "set leader key for EasyMotion
Plugin 'haya14busa/incsearch.vim'                      "enhanced search for vim, /\vtexta|textb
     map /  <Plug>(incsearch-forward)
     map ?  <Plug>(incsearch-backward)
     map g/ <Plug>(incsearch-stay)
Plugin 'haya14busa/incsearch-easymotion.vim'           "support for easymotion
     map z/ <Plug>(incsearch-easymotion-/)
     map z? <Plug>(incsearch-easymotion-?)
     map zg/ <Plug>(incsearch-easymotion-stay)
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'terryma/vim-multiple-cursors'                   "multiple cursors
" Plugin 'Valloric/YouCompleteMe'                         "autocomplete
" Plugin 'SirVer/ultisnips'
""""" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
""""" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Plugin 'ryanoasis/vim-devicons'                   "load devicons last
     let g:webdevicons_enable_airline_tabline = 1 " adding to vim-airline's tabline
     let g:webdevicons_enable_airline_statusline = 1 " adding to vim-airline's statusline

""""" git repos on your local machine (i.e. when working on your own plugin)
""""" Plugin 'file:///home/gmarik/path/to/plugin'
""""" Install L9 and avoid a Naming conflict if you've already installed a
""""" different version somewhere else.
""""" Plugin 'ascenator/L9', {'name': 'newL9'}

""""" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

""""" Brief help
""""" :PluginList       - lists configured plugins
""""" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
""""" :PluginSearch foo - searches for foo; append `!` to refresh local cache
""""" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""""" see :h vundle for more details or wiki for FAQ
"
""""" Put your non-Plugin stuff after this line

" let mapleader = ","
" let g:mapleader = ","

" quick saving
nnoremap <Leader>w :w<cr>

" exit and save
nnoremap <Leader>q :wqa<CR>

"quick exit
nnoremap <Leader><leader>q :q<CR>

"remap Ctrl+U/W so undo is saved
inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

"quick comment
nmap <Leader>g gcc
nmap <Leader>f 10gcc

"remove line and after the cursor in normal and visual mode
nnoremap <Leader>a d^
nnoremap <Leader>l d$
inoremap <Leader>a d^
inoremap <Leader>l d$

"remove word at the cursor
nnoremap <Leader> dw

" remap escape in insert mode
inoremap jj <Esc>
" imap <S-Space> <Esc>
" nnoremap <S-Space> i
"
"quick split opening
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

" tab move between splits
nnoremap <Tab> <C-W>w
" shift tab move between buffers
nnoremap <S-Tab> :bn<CR>
" ctrl arrows to select tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :tabnew<CR>
" f5 to select buffers
nnoremap <F5> :buffers<CR>:buffer<Space> "F5 to select from buffers

" resize horzontal split window
nnoremap <C-S-Up> <C-W>-<C-W>-
nnoremap <C-S-Down> <C-W>+<C-W>+
" resize vertical split window
nnoremap <C-S-Right> <C-W>><C-W>>
nnoremap <C-S-Left> <C-W><<C-W><

" search for selection
" vnoremap <silent> * :call VisualSelection('f')<CR>
" vnoremap <silent> # :call VisualSelection('b')<CR>
" search and replace selected text
" vnoremap <silent> <Leader>r :call VisualSelection('replace')<CR>

" open vim with nerdtree running
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ctrl+n will toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
