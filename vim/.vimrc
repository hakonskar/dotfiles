"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File:            .vimrc
"                  Main configuration file for (g)Vim / MacVim
" Maintainer:      H�kon Sk�r - haakon.skaar@gmail.com

""" General vim options {{{1

" Load some sensible defaults
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

filetype plugin on              "Run plugins

set autoread                    "Automatically update files that have been changed outside of Vim
set history=400                 "How much history Vim will remember
set shiftwidth=2                "Number of spaces used for each step of (auto)indent
set smartindent                 "Do smart autoindenting when starting a new line
set autoindent                  "Copy indent from current line when starting a new line
set expandtab                   "In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set tabstop=4                   "The number of columns a tab counts for
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
set number                      "Show linenumbers
set splitbelow                  "New windows from horizontal split comes below
set splitright                  "New windows from vertical split opens to the right
set diffopt=vertical            "Split vertical when diffing
set foldmethod=marker           "Markers are used to specify folds.
set visualbell t_vb=            "No visualbell
set noswapfile                  "No backup
set nowritebackup               "No backup
set nobackup                    "No backup
set virtualedit=block           "Allow virtual editing in all modes.
set laststatus=2                "Status line also when only one window
set listchars=tab:>-,trail:�,eol:$,extends:>,precedes:<

" Ignore these
set wildignore=*.o,*.obj,*.exe,*.doc,*.xls,*.MOD,*.SIN,*.CGM,*.JBK,*.pdf,*.raf
set wildignore+=*.lnk,*.bmp,*.mcd,*.xmcd,*.jpg,*.jpeg,*.gni,*.avi,*.mpg,*.mpeg
set wildignore+=*.gif,*.png,*.xpm,*.cdr,*.eps

" Make split windows equal size
au VimResized * wincmd =


""" Plugin Manager {{{1

if has("win32")
  call plug#begin('~/vimfiles/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'

call plug#end()


""" Plugins - Settings and Key Mapping {{{1

" NERDCommenter
let NERDSpaceDelims=1
" let NERDCreateDefaultMappings=0
nmap <C-Space> <plug>NERDCommenterToggle
nmap <leader>cs <plug>NERDCommenterSexy


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


""" General Key Mapping {{{1
let mapleader = ","
let g:mapleader = ","

" Catch the transition to diff and map the jump-to-diff commands to space and S-space
au FilterWritePre * if &diff | exe 'noremap <space> ]cz.' | exe 'noremap <S-space> [cz.' | endif
au FilterWritePre * if &diff | exe 'set diffopt=filler,context:99999' | exe 'normal \<c-w>\<c-w>' | endif

" Put and get diffs
nmap <leader>dp :diffput<CR>
nmap <leader>dg :diffget<CR>

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

" List buffers (ls)
nmap <C-L> :ls<CR>

" Change behaviour of <S-K> to open Vim helpfile for word under cursor
au BufReadPost * map K :exe ":help ".expand("<cword>")<CR>

" Toggle highlight cursorline
nnoremap H :set cursorline!<CR>

" Alternative to <esc> in insert mode
imap jk <esc>l


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
      autocmd vimenter * colorscheme gruvbox
      set background=dark
      "colorscheme solarized8_high
    else
      colorscheme desert
    endif
  elseif has("win32")
    if system('echo %time:~0,2%') >=20 || system('echo %time:~0,2%') <= 7
      autocmd vimenter * colorscheme gruvbox
      set background=dark
    else
      colorscheme peaksea
    endif
  endif
endif

" Cursorline
if has("gui_running")
  set cursorline
  hi cursorline gui=NONE guibg=#333333
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

