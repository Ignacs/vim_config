"===================================================================================
" GENERAL SETTINGS
"===================================================================================

" if autochdir not work 
autocmd BufEnter * silent! lcd %:p:h

filetype off                  " required
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
    filetype indent plugin on
endif

" copy indent from current line
" set autoindent                  
set ai 

" change current working directory automatically
" set autochdir

" read open files again when changed outside Vim
" set autoread                    
" au FocusGained,BufEnter * checktime

" Automatically save before commands like :next and :make
set autowrite        

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" backspacing over everything in insert mode
set backspace=indent,eol,start  

" keep a backup file
set backup                      

" specified backup folder
set backupdir=./.backup,.,/tmp 	

" which directory to use for the file browser
set browsedir=current           

" stay with backspace, del after move the cursor
set bs=2

" Read the error file and jump to the first error.
set cf

" sync clipboard from vim's to system's
" EX: copy whole line is 'yy'
"     copy whole line to system's clipboard
set clipboard=unnamed

" Height of the command bar
set cmdheight=1

" scan the files given with the 'dictionary' option
set complete+=k                 

" confirmation before execute commands.
set confirm      

" highlight cursorline cterm=NONE ctermbg=7
set cursorline
" Remove underline of cursorline
hi Cursorline cterm=NONE ctermbg=8 ctermfg=17 guibg=#771c1c 

" Highlight the screen column of the cursor with CursorColumn
set cursorcolumn
" Modify background color of Cursorcolumn, remove the underline of cursorcolumn
hi Cursorcolumn cterm=NONE ctermbg=DarkGrey guibg=#771c1c 

" specified swap folder
set directory=.,./.backup,/tmp	

" Replace Tab with space
" set expandtab

" config file for 'vi' not 
" set exrc

" set fenc=big-5
set fdm=indent

" When non-zero, a column with the specified width is shown at the side
" 	of the window which indicates open and closed folds.
set fdc=6

" Folding
" auto-folding
set foldenable

"set foldmethod=syntax
set foldmethod=indent

" depth of fold at begin of line 
set foldcolumn=1

" the foldlevel of line in the current buffer
set foldlevel=99

" Hide buffers when they are abandoned
"set hidden             

" Highlight the matching keyword
" set hlsearch
set hls 						

" A buffer becomes hidden when it is abandoned
set hid

" keep lines of command line history
" set history=50                  

" Ignore case when search
set ic
"set ignorecase       

" Incremental search
set incsearch        

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Avoid garbled characters in Chinese language windows OS
set langmenu=en

" Always show status line
set laststatus=2

" strings to use in 'list' mode
set listchars=tab:>.,eol:\$     

" For regular expressions turn magic on
set magic

" How many tenths of a second to blink when matching brackets
" set mat=2

" Use mouse only in Normal and visual modes, i.e. cancel mouse in Insert mode.
" set mouse=nv 
" set mouse=a      " Enable mouse usage (all modes)
set mouse= " DONT attach any option, that's for remote ssh, selected by mouse

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible

" Turn off BEEP
set noeb
set noerrorbells
set novisualbell

" show line number 
set nu

"" set paste mode( paste from mosue) , but it will disable iab / abbr
" set paste 

" print options
" List of items that control the format of the output of |:hardcopy|.
set popt=left:8pc,right:3pc     

" relative line number
set relativenumber


" show the cursor position all the time
" set ruler                       
set ru  

" Keep 3 line in both page top and bottom 
set scrolloff=3

" 
set secure

" number of spaces to use for each step of indent
set shiftwidth=4		

" Show (partial) command in the last line of the screen.
set showcmd				

" When a bracket is inserted, briefly jump to the matching one.
set showmatch

"Smart indet
set si 					

" Do smart case matching
set smartcase        

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Use hard tabs as far as possible
set smarttab

" Format the statusline
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:\ %l/%L:%c
"set statusline=
"set statusline+=%4*%<\%m%<[%f\%r%h%w]\ 
"set statusline+=[%{&ff},%{&fileencoding},%Y]
"set statusline+=%=\[Position=%l,%v,%p%%]
"set statusline+=%1*\[%n]                                  "buffernr
"set statusline+=%2*\ %<%F\                                "File+path
"set statusline+=%3*\ %=\ %{''.(&fenc!=''?&fenc:&enc).''}\ "Encoding
"set statusline+=%4*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%5*\ %{&ff}\                              "FileFormat (dos/unix..)
"set statusline+=%6*\ row:%l/%L\ col:%03c\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot
"set statusline=%m%<%f\%r%h%w\ [%{&ff},%{&fileencoding}]\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
set statusline=
"set statusline=%#filepath#[%{expand('%:p')}]%#filetype#[%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%#filesize#%{FileSize()}%=%#position#%c,%l/%L\ [%3p%%]
set statusline+=%#filepath#[%{expand('%:p')}%m]
set statusline+=%#filetype#[%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]
set statusline+=%#filesize#%{FileSize()}
set statusline+=%=%#position#%c,%l/%L\ [%3p%%]

" turn syntax highlighting on
set t_Co=256

" number of spaces that a <Tab> counts for
set tabstop=4		

" set tenc=big-5

" No annoying sound on errors
set t_vb=
set tm=500

" visual bell instead of beeping
" set visualbell                  

" Allow specified keys that move the cursor left/right to move to the
" previous/next line when the cursor is on the first/last character in
" the line.  
set whichwrap+=<,>,h,l

" command-line completion in an enhanced mode
set wildmenu                    

" ignore these extensions
set wildignore=*.pyc,*.bak,*.o,*.e,*~,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" set the min width of a window to 0 so we can maximize others
set wmw=0                     

"Wrap lines
set wrap 				

" move around tabs. conflict with the original screen top/bottom
" comment them out if you want the original H/L
" go to prev tab
"map <S-H> gT
" go to next tab
"map <S-L> gt

" ,/ turn off search highlighting
" nmap <leader>/ :nohl<CR>

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif
" ,g generates the header guard
map <leader>g :call IncludeGuard()<CR>
fun! IncludeGuard()
   let basename = substitute(bufname(""), '.*/', '', '')
   let guard = '_' . substitute(toupper(basename), '\.', '_', "H")
   call append(0, "#ifndef " . guard)
   call append(1, "#define " . guard)
   call append( line("$"), "#endif // for #ifndef " . guard)
endfun

" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Automatically create .backup directory, writable by the group.
if filewritable(".") && ! filewritable(".backup")
	silent execute '!umask 002; mkdir .backup'
endif
"===================================================================================
" BUFFERS, WINDOWS
"===================================================================================
"-------------------------------------------------------------------------------
" The current directory is the directory of the file in the current window.
"-------------------------------------------------------------------------------
if has("autocmd")
	autocmd BufEnter * :lchdir %:p:h
endif
"
"-------------------------------------------------------------------------------
" close window (conflicts with the KDE setting for calling the process manager)
"-------------------------------------------------------------------------------
" noremap  <C-Esc>       :close<CR>
"inoremap  <C-Esc>  <C-C>:close<CR>

" Source a global configuration file if available
" if filereadable("/etc/vim/vimrc.local")
"   source /etc/vim/vimrc.local
" endif

"-------------------------------------------------------------------------------
" Fast switching between buffers
" The current buffer will be saved before switching to the next one.
" Choose :bprevious or :bnext
"-------------------------------------------------------------------------------
 noremap  <silent> <s-tab>       :if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
inoremap  <silent> <s-tab>  <C-C>:if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"
"-------------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif
"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F2   -  write file without confirmation
"    F3   -  call file explorer Ex
"    F4   -  show tag under curser in the preview window (tagfile must exist!)
"    F5   -  open quickfix error window
"    F6   -  close quickfix error window
"    F7   -  display previous error
"    F8   -  display next error   
"-------------------------------------------------------------------------------
map   <silent> <F2>        :write<CR>
map   <silent> <F3>        :Explore<CR>
nmap  <silent> <F4>        :exe ":ptag ".expand("<cword>")<CR>
map   <silent> <F5>        :copen<CR>
map   <silent> <F6>        :cclose<CR>
map   <silent> <F7>        :cp<CR>
map   <silent> <F8>        :cn<CR>
"
imap  <silent> <F2>   <Esc>:write<CR>
imap  <silent> <F3>   <Esc>:Explore<CR>
imap  <silent> <F4>   <Esc>:exe ":ptag ".expand("<cword>")<CR>
imap  <silent> <F5>   <Esc>:copen<CR>
imap  <silent> <F6>   <Esc>:cclose<CR>
imap  <silent> <F7>   <Esc>:cp<CR>
imap  <silent> <F8>   <Esc>:cn<CR>

" Remap VIM 0 to first non-blank character
map 0 ^
"-------------------------------------------------------------------------------
" Fast switching between buffers
" The current buffer will be saved before switching to the next one.
" Choose :bprevious or :bnext
"-------------------------------------------------------------------------------
 map  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly && 
     \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
imap  <silent> <s-tab>  <Esc>:if &modifiable && !&readonly && 
     \                  &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"
"-------------------------------------------------------------------------------
" Leave the editor with Ctrl-q : Write all changed buffers and exit Vim
"-------------------------------------------------------------------------------
" nmap  <C-q>    :wqa<CR>
"
"-------------------------------------------------------------------------------
" comma always followed by a space
"-------------------------------------------------------------------------------
inoremap  ,  ,<Space>
"
"-------------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"-------------------------------------------------------------------------------
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
"
vnoremap ( s()<Esc>P<Right>%
vnoremap [ s[]<Esc>P<Right>%
vnoremap { s{}<Esc>P<Right>%
"
"-------------------------------------------------------------------------------
" autocomplete quotes (visual and select mode)
"-------------------------------------------------------------------------------
xnoremap  '  s''<Esc>P<Right>
" xnoremap  "  s""<Esc>P<Right>
xnoremap  `  s``<Esc>P<Right>
"
"-------------------------------------------------------------------------------
" Change the working directory to the directory containing the current file
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif " has("autocmd")
"
"
" Map auto complete of (, ", ', [
inoremap @1 ()<esc>i
inoremap @2 []<esc>i
inoremap @3 {}<esc>i
inoremap @4 {<esc>o}<esc>O
inoremap @q ''<esc>i
inoremap @e ""<esc>i
inoremap @t <><esc>i

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
function! FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <=0 
        return "[Empty]"
    endif
    if bytes < 1024
        return "[" . bytes . "B]"
    elseif bytes < 1048576
        return "[" . (bytes / 1024). "KB]"
    else
        return "[" . (bytes / 1048576). "MB]"
    endif
endfunction
hi filepath cterm=none ctermbg=238 ctermfg=40
hi filetype cterm=none ctermbg=238 ctermfg=45
hi filesize cterm=none ctermbg=238 ctermfg=225
hi position cterm=none ctermbg=238 ctermfg=228

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction


" set diff color scheme
" /usr/share/vim/vim72/syntax/diff.vim
"hi diffAdded ctermfg=Green ctermbg=DarkGray guifg=Green
"hi diffRemoved ctermfg=Red ctermbg=DarkGray guifg=Red

" set color of comment 
"highlight Comment ctermfg=cyan

" map <F11> //* <C-R>=strftime("%Y-%m-%d")<BAR><CR><C-R>
" map <C-F11> i <C-R>=strftime("20%y%m%d %H:%M:%S")<BAR><CR>

" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
"map <F5> :!ctags -R ¡Vc++-kinds=+p ¡Vfields=+iaS ¡Vextra=+q .<CR>
map <F5> :!ctags -R<CR>


":highlight 
" save .vimrc, auto exec, .vimrc and apply immediately.
autocmd! bufwritepost .vimrc source %


" auto load cscope
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0 "use cscope as default tag
    set cst
    set nocsverb
	" there is a built-in plugin: cscope_map.vim 
	" " add any database in current directory
    " " add in cscope_maps.plugins
    " if filereadable("cscope.out")
    "     cs add cscope.out
    " " else add database pointed to by environment
    " elseif $CSCOPE_DB != ""
    "     cs add $CSCOPE_DB
    " endif
    set csverb
    set cscopetag
    set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif

" replace tesxt1 with text2
"iabbrev text1 text2

" complex :iab <expr> dd strftime("[%e-%b-%Y %H:%M]")
" " command to insert date and time
" in Insert mode 
" 	d+d+(space / enter)
inoreabbrev com /*<CR><CR>/<Up>
inoreabbrev <expr> dd strftime("%Y/%m/%d")
inoreabbrev <expr> tt strftime("%H:%M:%S")
inoreabbrev <expr> tt strftime("%H:%M:%S")
" semi-auto add comment  command
" insert mode : c+c+s+(space / enter)
inoreabbrev <expr> ccl strftime("// ignacs-%Y%m%d-RM#####-topic-")
inoreabbrev <expr> cc strftime("// ignacs-%Y%m%d-RM#")
" inoreabbrev <expr> cas strftime("// ignacs-%Y%m%d-RM#####-topic")
" inoreabbrev <expr> cae // add end, Ignacs Wu,
inoreabbrev <expr> cr strftime("// ignacs-%Y%m%d-RM#####-remove-")
" inoreabbrev <expr> crs "// remove start, Ignacs Wu,"
" inoreabbrev <expr> cre "// remove end, Ignacs Wu,"
inoreabbrev <expr> cm strftime("// ignacs-%Y%m%d-RM#####-modify-")
" inoreabbrev <expr> cms "// modify start, Ignacs Wu,"
" inoreabbrev <expr> cme "// modify end, Ignacs Wu,"
inoreabbrev <expr> cf  strftime("// ignacs-%Y%m%d-RM#####-fixed-")
" inoreabbrev <expr> cfs "// fixed start, Ignacs Wu,"
" inoreabbrev <expr> cfe "// fixed end, Ignacs Wu,"
inoreabbrev iff if ()<left>

  
"-------------------------------------------------------------------------------
" taglist.vim : toggle the taglist window
" taglist.vim : define the title texts for make
" taglist.vim : define the title texts for qmake
"-------------------------------------------------------------------------------
" noremap <silent> <F9>  <Esc><Esc>:Tlist<CR>
"inoremap <silent> <F9>  <Esc><Esc>:Tlist<CR>

let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select 				= 1

let tlist_make_settings  = 'make;v:variables;t:targets;i:includes'
let tlist_qmake_settings = 'qmake;t:SystemVariables'

" if has("autocmd")
"   " ----------  qmake : set filetype for *.pro  ----------
"   autocmd BufNewFile,BufRead *.pro  set filetype=qmake
" endif " has("autocmd")

" color setting
colorscheme molokai 
" vimdifff use different color setting
if &diff
    " colorscheme evening
    " colorscheme mourning
    " colorscheme SerialExperimentsLain
    " colorscheme shadesofamber
    " colorscheme ibmedit
    "colorscheme bluish
 endif


" Remove trailing whitespace when writing a buffer, but not for diff files.
"" From: Vigil
" function RemoveTrailingWhitespace()
"      let b:curcol = col(¡§.")
"      let b:curline = line(¡§.")
"      silent! %s/s+$//
"      silent! %s/(s*n)+%$//
"      call cursor(b:curline, b:curcol)
" endfunction
" autocmd BufWritePre * call RemoveTrailingWhitespace()

"map  <F12> :r! date +\%s<cr>
nmap <F12> <Plug>CscopeDBInit


" " complex :iab <expr> dd strftime("[%e-%b-%Y %H:%M]")
" " command to insert date and time
" " in Insert mode : d+d+(space / enter)
" :iab <expr> dd strftime("%Y/%m/%d")
" :iab <expr> tt strftime("%H:%M:%S")
" " semi-auto add comment  command
" " in Insert mode : c+c+s+(space / enter)
" :iab <expr> ca "// add, Ignacs Wu,"
" :iab <expr> cas "// add start, Ignacs Wu,"
" :iab <expr> cae "// add end, Ignacs Wu,"
" :iab <expr> cr "// remove, Ignacs Wu,"
" :iab <expr> crs "// remove start, Ignacs Wu,"
" :iab <expr> cre "// remove end, Ignacs Wu,"
" :iab <expr> cm "// modify, Ignacs Wu,"
" :iab <expr> cms "// modify start, Ignacs Wu,"
" :iab <expr> cme "// modify end, Ignacs Wu,"
" :iab <expr> cf  "// fixed, Ignacs Wu,"
" :iab <expr> cfs "// fixed start, Ignacs Wu,"
" :iab <expr> cfe "// fixed end, Ignacs Wu,"

" for CJK language
if has("multi_byte")
	set encoding=utf-8
	setglobal fileencoding=big5
	set fileencoding=big5
	set bomb
	set termencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
	set guifont=-misc-fixed-medium-r-normal-*-18-120-100-100-c-90-iso10646-1
	set guifontwide=-misc-fixed-medium-r-normal-*-18-120-100-100-c-180-iso10646-1
else
	echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.c,*.h,*.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Put your non-Plugin stuff after this line
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"
" Plugin 'Valloric/YouCompleteMe'

" You can have VIM check your syntax on each save with the syntastic extension:
Plugin 'vim-syntastic/syntastic'

" Also add PEP 8 checking with this nifty little plugin:
Plugin 'nvie/vim-flake8'

" If you want a proper file tree, then NERDTree is the way to go:
Plugin 'scrooloose/nerdtree'

" Want to search for basically anything from VIM? Check out ctrlP:
Plugin 'kien/ctrlp.vim'

" Want to perform basic git commands without leaving the comfort of VIM? Then vim-fugitive is the way to go:
Plugin 'tpope/vim-fugitive'

" Color scheme 
Plugin 'tomasr/molokai'

" ...
" All of your Plugins must be added before the following line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" python3 support
" au BufNewFile,BufRead *.py  set softtabstop=4  set textwidth=79  set fileformat=unix
" set expandtab

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" let python_highlight_all=1

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

