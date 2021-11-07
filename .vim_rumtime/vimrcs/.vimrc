
source ~/.vim/general_vimrc
source ~/.vim/status_line_vimrc
source ~/.vim/key_mapping_vimrc
source ~/.vim/plugins_vimrc
source ~/.vim/visual_mode_vimrc
source ~/.vim/color_vimrc


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

":highlight 
" save .vimrc, auto exec, .vimrc and apply immediately.
autocmd! bufwritepost .vimrc source %


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


" set diff color scheme
" /usr/share/vim/vim72/syntax/diff.vim
"hi diffAdded ctermfg=Green ctermbg=DarkGray guifg=Green
"hi diffRemoved ctermfg=Red ctermbg=DarkGray guifg=Red

" set color of comment 
"highlight Comment ctermfg=cyan





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



"map  <F12> :r! date +\%s<cr>
nmap <F12> <Plug>CscopeDBInit


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

