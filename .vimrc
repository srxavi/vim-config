" Plugins init
filetype plugin on

" Pathogen
call pathogen#runtime_append_all_bundles() 
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()

" Omnifunc
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete


" Vim UI
syntax on
" set bg=dark
set showmode
set nu
set hlsearch
set winminheight=0
set cursorline
if has('cmdline_info')
	set ruler                  	" show the ruler
	set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
	set showcmd                	" show partial commands in status line and
endif
set showmatch
set smartcase
if exists('+colorcolumn')
  set colorcolumn=80
  hi ColorColumn guibg=#333333
endif

" GVim
if has('gui_running')
    hi cursorline guibg=#333333
    hi cursorcolumn guibg=#333333
    set background=dark
    colorscheme solarized
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set lines=40
    set columns=120
endif

" Status line hawtness
if has('statusline')
    set laststatus=2
    set statusline=%<%f\    " Filename
    set statusline+=%w%h%m%r " Options
    set statusline+=%{fugitive#statusline()} "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " filetype
    set statusline+=\ [%{getcwd()}]          " current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info 
endif

" Formatting
set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set pastetoggle=<F12>

" Key remaps
let mapleader = ','

" NerdTree
map <silent> <C-e> :NERDTreeToggle<CR> :NERDTreeMirror<CR>
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1

" Pydict
let g:pydiction_location='$HOME/.vim/bundle/Pydiction/complete-dict'

" SuperTab
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabCrMapping = 0
