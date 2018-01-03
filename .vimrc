" Start pathogen
execute pathogen#infect()

" Auto bracket plugin
filetype plugin indent on

set t_Co=256
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized
" colorscheme jellybeans
" syntax on

" Set a new <leader> character
let mapleader = ","
let g:mapleader = ","

"augroup vimrc_autocmds
"    autocmd BufEnter * highlight OverLength ctermbg=red guibg=#592929
"    autocmd BufEnter * match OverLength /\%81v.*/
"augroup END

" Fast saving
nmap <leader>w :w!<cr>

" Fuzzy file finding
set runtimepath^=~/.vim/bundle/ctrlp.vim
" omni completion
set omnifunc=syntaxcomplete#Complete
" Tab Settings
" Share clipboard with general OS clipboard
set clipboard=unnamedplus
set tabstop=4 " number of visual spaces a tab counts for
set shiftwidth=4
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" Indentation Settings
set autoindent
set cindent

set number          " display absolute line number of current line
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight matching [{()}]
set incsearch       " search as characters are entered
set hlsearch        " highlights search matches
set ignorecase      " ignore case when searching
set smartcase       " smart case searching
nnoremap <leader>c :nohlsearch<CR>

" Allow for mouse click to move cursor
set mouse=a

" Make all tabs align
set shiftround

" j and k treat wrapped lines as distinct lines when going up and down the page
nmap j gj
nmap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" Insert single character by pressing space
nmap <Space> i_<Esc>r
" Change tabs
nmap <F7> :tabp<CR>
nmap <F8> :tabn<CR>
nmap H :tabp<CR>
nmap L :tabn<CR>
" absolute line number jumping by typing line number then enter
:nnoremap <CR> G
" save session , == leader
nnoremap <leader>s :mksession!<CR>

" Compile and display latex using evince
" command Latex execute \"silent !pdflatex % > /dev/null && evince %:r.pdf > /dev/null 2>&1 &" | redraw!
map <F2> :Latex<CR>

" Toggle spell checking
" z= to show spelling suggestions
map <F3> :setlocal spell! spelllang=en_us<CR>

" Toggle paste mode
map <F4> :setlocal paste!<CR>

" adjust configuration for such hostile environment as Windows {{{
if has("darwin")
elseif has("unix")
else
    " Cygwin stuff
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif
" }}}

" Vim-Latex Settings

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Ignore these files when completing names
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pdf,*.bak,*.beam
