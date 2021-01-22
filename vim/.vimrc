"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File:   .vimrc
"         Main configuration file for (g)Vim / MacVim

""" General vim options {{{1

let mapleader = " "
let g:mapleader = " "
set encoding=utf-8

" Load some sensible defaults
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set autoread                    "Automatically update files that have been changed outside of Vim
set history=400                 "How much history Vim will remember
set shiftwidth=2                "Number of spaces used for each step of (auto)indent
set smartindent                 "Do smart autoindenting when starting a new line
set autoindent                  "Copy indent from current line when starting a new line
set expandtab                   "In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set tabstop=4 softtabstop=4     "The number of spaces a tab counts for
set showmatch                   "Show matching brackets
set linebreak                   "Wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen
set nowrap                      "Don't wrap long lines
set ignorecase                  "Case-insensitive search
set smartcase                   "Upper-case if search pattern contains uppercase
set hlsearch                    "Highlight search
set shortmess-=S                "Show search count message when searching
set wildignorecase              "Ignore case for file completion
set lazyredraw                  "The screen will not be redrawn while executing macros
set so=7                        "Minimal number of screen lines to keep above and below the cursor
set cmdheight=2                 "Number of screen lines to use for the command-line.
set number                      "Show linenumbers
set splitbelow                  "New windows from horizontal split comes below
set splitright                  "New windows from vertical split opens to the right
set diffopt=vertical            "Split vertical when diffing
set foldmethod=marker           "Markers are used to specify folds.
set visualbell t_vb=            "No visualbell
set noswapfile                  "No backup
set nowritebackup               "No backup
set nobackup                    "No backup
set virtualedit=block           "Allow virtual editing in Visual block mode
set laststatus=2                "Status line also when only one window
set listchars=tab:>-,trail:·,eol:$,extends:>,precedes:<

" Ignore these
set wildignore=*.avi,*.bmp,*.cdr,*.CGM,*.doc,*.eps,*.exe,*.gif,*.gni,*.JBK
set wildignore+=*.jpeg,*.jpg,*.lnk,*.mcd,*.MOD,*.mpeg,*.mpg,*.o,*.obj,*.pdf
set wildignore+=*.png,*.raf,*.SIN,*.xls,*.xlsm,*.xlsx,*.xmcd,*.xpm

" Make split windows equal size
au VimResized * wincmd =

" Packadd
packadd! matchit

""" Plugin Manager, plugin settings and key mapping {{{1

if has("win32")
  call plug#begin('~/vimfiles/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

Plug 'gruvbox-community/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'

call plug#end()

" CtrlP
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = ''
let g:ctrlp_show_hidden = 1

" Undotree
nnoremap <F5> :UndotreeToggle<cr>

""" Abbreviations. {{{1
" Short date and long date
iab ldate <c-r>=strftime("%d %B %Y - %H:%M:%S")<cr>
iab sdate <c-r>=strftime("%d %B %Y")<cr>

""" Key Mapping {{{1

" Count search matches
map <leader>/ :%s///gn<CR>

" Remove search highlight
nnoremap <silent> - :noh<CR>

" Toggle linewraps and listview
nnoremap <leader>w :set nowrap!<CR>
nnoremap <leader>l :set list!<CR>

" Toggle relative line number
nnoremap <leader>rl :call NumberToggle()<CR>

" Save and copy with <C-S> and <C-C>
noremap <C-S> :update<CR>
"noremap <C-C> "*y

" Use Ctrl-n to edit alternate file
nnoremap <C-N> <C-6>

" cd to directory of current file
map <leader>cd :cd %:h<cr>

" Scroll one screen-line also when lines are wrapped
map j gj
map k gk

" Edit and source vimrc
nmap <leader>s :source $MYVIMRC
nmap <leader>v :e $MYVIMRC

" Bash-style command-line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>

" Change behaviour of <S-K> to open Vim helpfile for word under cursor
au BufReadPost * map K :exe ":help ".expand("<cword>")<CR>

" Alternative to <esc> in insert mode
imap jk <esc>l

" Clear buffer list
command! BufOnly execute "%bd | e# | echo 'Bufs Deleted'"
nnoremap <silent> <leader>bd :BufOnly<CR>

" Next and previous in quickfix window
nmap <leader>n :cnext<CR>
nmap <leader>p :cprevious<CR>

""" Netrw {{{1

" NERDTree'ish settings for netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

" Toggle netrw
nmap <leader>t :Lexplore<CR>

""" Colorscheme, Fonts & Cursorline {{{1

" Is it late?
function! IsLate()
  if has("win32")
    return (system('echo %time:~0,2%') >=21 || system('echo %time:~0,2%') <= 7)
  else
    return (system('date +%H') >= 21 || system('date +%H') <= 7)
  endif
endfunction

" Colorscheme, time-of-day dependent
if IsLate()
  colorscheme solarized8_high
  set background=dark
else
  colorscheme gruvbox
  set background=dark
endif

" Font
if has("win32")
  set gfn=Hack:h11,Consolas:h11:cANSI
else
  " set gfn=Monospace\ 12
  set gfn=Inconsolata\ 15
endif

""" Window-size and GUI options {{{1

if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  try
    set switchbuf=usetab
    set stal=1
  catch
  endtry

  if has("gui_win32")
    set lines=60
    set columns=125
    set visualbell t_vb=
    au GuiEnter * set visualbell t_vb=
  else
    set lines=47
    set columns=125
  endif

else
  " Make vim work better in terminal
  hi! Normal ctermbg=NONE guibg=NONE
  hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
endif

""" Misc functions {{{1

" Toggle relative line number mode
function! NumberToggle()
  if (&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Trim whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()
