
source ~/.vim/vimrcs/general_vimrc
source ~/.vim/vimrcs/status_line_vimrc
source ~/.vim/vimrcs/key_mapping_vimrc
source ~/.vim/vimrcs/plugins_vimrc
source ~/.vim/vimrcs/visual_mode_vimrc
source ~/.vim/vimrcs/color_vimrc
source ~/.vim/vimrcs/file_type_vimrc

source ~/.vim/plugins/gtags.vim
source ~/.vim/plugins/gtags-cscope.vim


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

  
