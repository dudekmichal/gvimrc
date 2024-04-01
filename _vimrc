call plug#begin('~/vimfiles/plugged')
Plug 'preservim/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/colorizer'
Plug 'Yggdroot/indentLine'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'bfrg/vim-cpp-modern'
Plug 'itchyny/vim-cursorword'
Plug 'bounceme/poppy.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'preservim/tagbar'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

set guifont=Consolas:h11

if has("gui_running")
  set lines=45 columns=100
endif

set encoding=utf-8
set fileencoding=utf-8
set nocompatible
set updatetime=100
syntax on
filetype on
filetype plugin on
set autoindent
filetype indent on
set showmatch
set t_Co=256
set background=dark
let mapleader=" "
set showtabline=2
set backspace=indent,eol,start

set mouse=
set ttymouse=

" colorscheme 256_noir
" colorscheme codedark
colorscheme deep-space

" let g:lightline = {'colorscheme': 'PaperColor'}
let g:lightline = {'colorscheme': 'jellybeans'}
" let g:lightline = {'colorscheme': 'darcula'}

"Highlight searching
set hlsearch

"Set incremental searching
set incsearch

" A tab is 2 spaces
set tabstop=2

" Width of indent with shift
set shiftwidth=2

" Insert spaces instead of tabs
set expandtab

" See multiple space characters as tabstops
set softtabstop=2

" Ignore case when searching
set ignorecase

" Remember more commands
set history=1000

" save undo's after file closes
set undofile
" where to save undo history
set undodir=~/.vim/undo
" how many undos
set undolevels=1000
" numbers of lines to save for undo
set undoreload=10000
"
" Don't beep
autocmd GUIEnter * set vb t_vb= " for your GUI
autocmd VimEnter * set vb t_vb=

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Highlight current line and column
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
set cursorline " cursorcolumn

" Cursor stays in the middle of the screen
set scrolloff=50

" show numbers of lines
set number
set relativenumber

" Write the old file out when switching between files.
" set autowrite

" Display current cursor position in lower right corner.
set ruler

"Better line wrapping
set wrap
set textwidth=79
set formatoptions=qrn1

"Enable/disable code folding
" set foldenable
set nofoldenable

" How to fold
set foldmethod=indent

"Hide mouse when typing
set mousehide

" More useful command-line completion
set wildmenu

"Auto-completion menu
set wildmode=list:longest

" Open splits below and on the right
set splitbelow
set splitright

" Syntastic options
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

" wincmd p puts the cursor in the main window
autocmd VimEnter * wincmd p

" reload vim config
map <leader>r :source ~/_vimrc<CR>

" Taglist
 " autocmd FileType c,h,cpp,java,sh,py nested :TlistOpen
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open = 1
" let TlistHighlightTag = 1
map <Leader>2 :TlistToggle<CR>

" Tagbar
" Open Tagbar only with specific files
" autocmd FileType c,h,cpp,java,sh nested :TagbarOpen
map <Leader>2 :TagbarToggle<CR>
let g:tagbar_left = 0
let g:tagbar_width = 25
let g:tagbar_sort = 1
let g:tagbar_indent = 1
let g:tagbar_show_visibility = 1
let g:tagbar_show_linenumbers = 0
let g:tagbar_singleclick = 1
let g:tagbar_foldlevel = 2
let g:tagbar_iconchars = ['+', '-']
let g:tagbar_autoshowtag = 1
let g:tagbar_autopreview = 0
highlight TagbarKind ctermfg=96
highlight TagbarNestedKind ctermfg=96
highlight TagbarScope ctermfg=96
highlight TagbarType ctermfg=96
highlight TagbarSignature ctermfg=96
highlight TagbarFoldIcon ctermfg=96
highlight TagbarHighlight ctermfg=96
highlight TagbarVisibilityPublic ctermfg=96
highlight TagbarVisibilityProtected ctermfg=96
highlight TagbarVisibilityPrivate ctermfg=96

" NERDTree
" autocmd FileType c,h,cpp,java,sh,py nested :NERDTree
let g:NERDTreeHijackNetrw=0
" autocmd VimEnter * NERDTree | wincmd p
" autocmd BufEnter * lcd %:p:h
let g:NERDTreeWinSize = 30
map <Leader>1 :NERDTreeToggle<CR>
let NERDTreeShowHidden=0
let g:NERDTreeDirArrows=0
let NERDTreeAutoDeleteBuffer=1
let NERDTreeCascadeOpenSingleChildDir=1
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=0
let NERDTreeShowBookmarks=0
let NERDTreeBookmarksFile="~/.NERDTreeBookmarks"
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeIgnore=['\.vim$', '\.o$', '\.pdf$', '\.png$', '\.jpg$', '\.doc$', '\.mp4$', '\.mp3$', '\.rar$', '\.zip$', '\~$']
" highlight NERDTreeDir guifg=#FF0000 ctermfg=red

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 5
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" undotree
nnoremap <Leader>u :UndotreeToggle<cr>
if !exists('g:undotree_WindowLayout')
  let g:undotree_WindowLayout = 1
endif

" undotree window width
if !exists('g:undotree_SplitWidth')
  let g:undotree_SplitWidth = 40
endif

" diff window height
if !exists('g:undotree_DiffpanelHeight')
  let g:undotree_DiffpanelHeight = 20
endif

" auto open diff window
if !exists('g:undotree_DiffAutoOpen')
  let g:undotree_DiffAutoOpen = 1
endif

" Highlight changed text
if !exists('g:undotree_HighlightChangedText')
  let g:undotree_HighlightChangedText = 1
endif

" Kill the capslock when leaving insert mode.
autocmd InsertLeave * set iminsert=0

" Better copy/paste (go to insert, press F2 and paste text)
set pastetoggle=<F2>
set clipboard=unnamed

" Compiling directly in vim
nmap <Leader>9 :make<cr>

" run compiled file
map <Leader>0 :!./bin<CR>

" jk instead od ESC
inoremap jk <ESC>

" search with space
" noremap <space> /

nnoremap Y y$

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Faster commands
noremap ; :

" Move to the first non-blank character of the line
nnoremap m ^

" Move to the last non-blank character of the line
nnoremap M $

" Undo/Redo with arrows
:map <Left> :undo<CR>
:map <Right> :redo<CR>

" Previous/Next function
:map <Up> [[
:map <Down> ]]

" ctrl+n to off backlight during search in text
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" jump to the end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" leader-key maps
" saving
nnoremap <Leader>w :w<CR>
" closing
nnoremap <Leader>c :q<CR>
" search and replace (cs - replace first match, n - next)
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
" splitting
nnoremap <Leader>a :sp<CR>
nnoremap <Leader>s :vsp<CR>
nnoremap <Leader>k :resize +5<CR>
nnoremap <Leader>j :resize -5<CR>

" No backup and swap files
set nobackup
set nowritebackup
set noswapfile

" ultisnips
" Do not use <tab> if you use YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/snippets']

" highlight colors
" autocmd VimEnter * ColorHighlight

" vim-airline
" let g:airline_theme='powerlineish'

" lightline
set laststatus=2

" show some whitespaces
set list!
if has('gui_running')
  set listchars=tab:▶\ ,trail:·,extends:\#,nbsp:.
else
  set listchars=tab:>.,trail:.,extends:\#,nbsp:.
endif

