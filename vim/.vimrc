"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File:            .vimrc
"                  Main configuration file for (g)Vim / MacVim
" Maintainer:      Håkon Skår - haakon.skaar@gmail.com

""" General vim options {{{1
set nocompatible                "Vim, not Vi.
syntax on                       "let Vim overrule color settings

filetype plugin on              "Run plugins
filetype indent on              "Apply indentation

set autoread                    "Automatically update files that have been changed outside of Vim
set hid                         "Abandoned buffers become hidden (not unloaded)
set history=400                 "How much history Vim will remember
set undolevels=200              "Undolevels to remember
set shiftwidth=2                "Number of spaces used for each step of (auto)indent
set smartindent                 "Do smart autoindenting when starting a new line
set autoindent                  "Copy indent from current line when starting a new line
set expandtab                   "In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set smarttab                    "<Tab> in front of a line inserts blanks according to 'shiftwidth'
set showmatch                   "Show matching brackets
set linebreak                   "Wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen
set nowrap                      "Don't wrap long lines
set ignorecase                  "Case-insensitive search
set smartcase                   "Upper-case if search pattern contains uppercase
set incsearch                   "Incremental search
set hlsearch                    "Highlight search
set lazyredraw                  "The screen will not be redrawn while executing macros
set so=7                        "Minimal number of screen lines to keep above and below the cursor
set cmdheight=2                 "Number of screen lines to use for the command-line.
set tabstop=4                   "The number of columns a tab counts for
set showcmd                     "Show (partial) command in the last line of the screen.
set number                      "Show linenumbers
set wildmenu                    "Enhanced command-line completion
set ruler                       "Show the line and column number of the cursor position
set splitbelow                  "New windows from horizontal split comes below
set splitright                  "New windows from vertical split opens to the right
set diffopt=vertical            "Split vertical when diffing
set foldmethod=marker           "Markers are used to specify folds.
" set foldcolumn=2                "Column indicating folds shown at side of window
set visualbell t_vb=            "No visualbell
set noswapfile                  "No backup
set nowritebackup               "No backup
set nobackup                    "No backup
set virtualedit=all             "Allow virtual editing in all modes.
set backspace=indent,eol,start  "Make backspace work properly
set laststatus=2                "Status line also when only one window
set listchars=tab:>-,trail:·,eol:$,extends:>,precedes:<

" Ignore these
set wildignore=*.o,*.obj,*.exe,*.doc,*.xls,*.MOD,*.SIN,*.CGM,*.JBK,*.pdf,*.raf
set wildignore+=*.lnk,*.bmp,*.mcd,*.xmcd,*.jpg,*.jpeg,*.gni,*.avi,*.mpg,*.mpeg
set wildignore+=*.gif,*.png,*.xpm,*.cdr,*.eps

" Jump to the last used lineposition when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Make split windows equal size
au VimResized * wincmd =


""" Statusline {{{1
set statusline=
set statusline+=%<\                   " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\    " flags and buf no
set statusline+=%-40f\                " path
set statusline+=%=                    " right align
set statusline+=%{SyntaxItem()}\      " syntax highlight group
set statusline+=%1*%y%*%*\            " file format
set statusline+=%{&ff}\               " filetype
set statusline+=%10((%l,%c)%)\        " line and column
set statusline+=%P                    " percentage of file


""" Abbreviations. {{{1
" Short date and long date
iab ldate <c-r>=strftime("%d %B %Y - %H:%M:%S")<cr>
iab sdate <c-r>=strftime("%d %B %Y")<cr>


""" Mappings {{{1
let mapleader = ","
let g:mapleader = ","

" Catch the transition to diff and map the jump-to-diff commands to space and S-space
au FilterWritePre * if &diff | exe 'noremap <space> ]cz.' | exe 'noremap <S-space> [cz.' | endif
au FilterWritePre * if &diff | exe 'set diffopt=filler,context:99999' | exe 'normal \<c-w>\<c-w>' | endif

" Put and get diffs
nmap <leader>dp :diffput<CR>
nmap <leader>dg :diffget<CR>

" See the difference between the current buffer and the file it was loaded from
nmap <leader>do :DiffOrig<CR>

" Tail-like functionality
nmap <leader>e :e<CR>G

" Count matches with <leader>/, remove highlights with <space>
map <leader>/ :%s///gn<CR>
nnoremap <silent> <space> :noh<CR>

" Remove trailing spaces
nmap <leader>rt :%s/ \+$//g<CR>:noh<CR>``

" Toggle linewraps and listview
nnoremap <leader>w :set nowrap!<CR>
nnoremap <leader>l :set list!<CR>

" Toggle relative line number
nnoremap <leader>rl :call NumberToggle()<CR>

" Save and copy with <C-S> and <C-C>
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
noremap <C-C> "*y

" cd to directory of current file
map <leader>cd :cd %:h<cr>

" Scroll one screen-line also when lines are wrapped
map j gj
map k gk

" Edit and source vimrc
nmap <leader>s :source $MYVIMRC
nmap <leader>v :e $MYVIMRC

" Delete until slash on commandline
cno <leader>q <C-\>eDeleteTillSlash()<cr>

" Bash-style command-line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>

" Next buffer and previous buffer
nmap <C-N> :bn<CR>
nmap <C-P> :bp<CR>

" Next and previous item in Quickfix List
noremap <leader>n :cn<CR>
noremap <leader>p :cp<CR>

" List buffers (ls)
nmap <C-L> :ls<CR>

" Change behaviour of <S-K> to open Vim helpfile for word under cursor
au BufReadPost * map K :exe ":help ".expand("<cword>")<CR>

" Toggle highlight cursorline
nnoremap H :set cursorline!<CR>

" Show terminal calendar
if has("mac") || has("macunix") || has("unix")
  nmap <leader>y :!cal -y<CR>
endif

" Alternative to <esc> in insert mode
imap jk <esc>l

""" Colorscheme, Fonts & Cursorline {{{1

" Font
if has("win32")
  set gfn=Hack:h11,Consolas:h11:cANSI
elseif has("mac") || has("macunix") || has("unix")
  set gfn=Monospace\ 12
endif


" Colorscheme, time-of-day dependant
if has("gui_running")
  if has("mac") || has("macunix") || has("unix")
    if system('date +%H') >= 20 || system('date +%H') <= 7
      set background=dark
      colorscheme solarized8_high
      "colorscheme peaksea
      set cursorline
      hi cursorline gui=NONE guibg=#073642
    else
      colorscheme desert
    endif
  elseif has("win32")
    if system('echo %time:~0,2%') >=20 || system('echo %time:~0,2%') <= 7
      set background=dark
      colorscheme solarized8_high
      "colorscheme peaksea
      set cursorline
      hi cursorline gui=NONE guibg=#073642
    else
      colorscheme desert
    endif
  endif
endif


" Cursorline
"if has("gui_running")
"  set cursorline
"  hi cursorline gui=NONE guibg=#333333
"endif


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
    set lines=65
    set columns=140
    set visualbell t_vb=
    au GuiEnter * set visualbell t_vb=
  elseif has("gui_macvim")
    set lines=65
    set columns=130
  else
    set lines=50
    set columns=125
  endif

endif

" Maximize window when starting vim in diffmode
"if &diff
"    set nocul
"    if has("win_32")
"        au GUIEnter * simalt ~x
"    elseif has("gui_macvim")
"        " set fuoptions=maxvert,maxhorz
"        au GUIEnter * set fullscreen
"    endif
"endif


""" Helper functions {{{1
" For the <leader>q mapping
func! DeleteTillSlash()
  let g:cmd = getcmdline()

  if has("win16") || has("win32")
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
  else
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
  endif

  if g:cmd == g:cmd_edited
    if has("win16") || has("win32")
      let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
    else
      let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
    endif
  endif

  return g:cmd_edited
endfunc

" Return syntax group
function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

" Toggle relative line number mode
function! NumberToggle()
  if (&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif


""" Options for plugins {{{1
" Vim-plug
"if has("win32")
"    silent! call plug#begin('~\vimfiles\plugged')
"elseif has("mac") || has("macunix") || has("unix")
"    call plug#begin('~/.vim/plugged')
"endif
"
"Plug 'vim-airline/vim-airline'
"
"call plug#end()
