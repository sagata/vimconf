"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/gzxiangxunwen/.vim/bundle/neobundle.vim/

" Required:
"call neobundle#begin(expand('/home/gzxiangxunwen/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
"NeoBundle 'ctrlpvim/ctrlp.vim'

" Required:
"call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"NeoBundleCheck
"End NeoBundle Scripts-------------------------
"
set number
set nocompatible
set syntax=on
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType html,javascript,css set tabstop=2 | set softtabstop=2 | set shiftwidth=2
autocmd FileType python,c,cpp set tabstop=4 | set softtabstop=4 | set shiftwidth=4
set expandtab
set incsearch
set hlsearch
set ignorecase "搜索时忽略大小写
set nobackup
set noundofile
set noswapfile
filetype on		"侦测文件类型
set nocp "omnicppcomplete need this
filetype plugin on	"载入文件类型插件
filetype indent on	"为特定文件类型载入相关缩进文件	
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936 "中文乱码问题
let g:miniBufExplMapWindowNavVim = 1 "To enable the optional mapping of Control + Vim Direction Keys[hjkl]
let g:miniBufExplMapCTabSwitchBufs = 1 "To enable the optional mapping of <C-TAB> and <C-S-TAB> 
set splitright
map <c-t><c-t> :TagbarToggle<CR>
map <c-e><c-e> :NERDTreeToggle<CR>
let g:tagbar_sort=0
let g:tagbar_left=1
let g:tagbar_expand=1
let g:tagbar_width=30
" build tags of your own project with Ctrl-F12
map <c-u><c-u> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" QT library
"au BufNewFile,BufRead *.cpp,*.h set tags+=/usr/include/qt4/QtSql/tags
au BufNewFile,BufRead *.cpp,*.h set tags+=/usr/include/qt4/QtGui/tags
au BufNewFile,BufRead *.cpp,*.h set tags+=/usr/include/qt4/QtCore/tags
"au BufNewFile,BufRead *.cpp,*.h set tags+=/usr/include/qt4/QtWebKit/tags
"au BufNewFile,BufRead *.cpp,*.h set tags+=/usr/include/qt4/QtNetwork/tags
au BufNewFile,BufRead *.cpp,*.h set dictionary+=~/.vim/dictionary_qt " add QT dictionary
"au BufNewFile,BufRead *.pro set dictionary+=~/.vim/dictionary_qt_pro " QT project file
"au BufNewFile,BufRead *.qrc set dictionary+=~/.vim/dictionary_qt_qrc " QT resource file
" Poppler-qt4 library
"au BufNewFile,BufRead *.cpp,*.h set tags+=/usr/include/poppler/qt4/tags " add poppler library
" STL library
"au BufNewFile,BufRead *.cpp,*.h set tags+=$HOME/.vim/cpp_src/tags
" OpenCV library
"au BufNewFile,BufRead *.cpp,*.h set tags+=/usr/local/opencv/include/tags " add opencv library
" GTK3 library
"au BufNewFile,BufRead *.c,*.h set tags+=/usr/include/gtk-3.0/gtk/tags
" Mupdf library
au BufNewFile,BufRead *.c,*.cpp,*.h set tags+=/home/a/project/mupdf-1.0rc1/tags

let g:alternateExtensions_h="cpp,c" "用于a.vim,从.h文件优先切换到.cpp文件

"让vim记忆上次编辑的位置
autocmd BufReadPost *
			\ if line("'\"")>0&&line("'\"")<=line("$") |
			\	exe "normal g'\"" |
			\ endif

colorscheme monokai
"改变打叠颜色
hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
"改变窗口边框颜色
hi VertSplit guibg=#31312D guifg=#526A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none
hi StatusLineNC guibg=#31312D guifg=#526A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none 
hi FoldColumn guibg=#31312D guifg=#526A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none 
"hi Comment term=bold ctermfg=3 

"设置ctags
map tn :tn<cr>
map tp :tprevious<cr>

"设置make
map cp :cprevious<cr>
map cn :cnext<cr>
map mcm :cd build<cr>:!echo "使用CMake生成项目文件...";cmake ..<cr>:cd ..<cr> :!<cr>
map mak :cd build<cr>:!echo "正在编译...";make<cr>:cd ..<cr> :!<cr>
" expand("%:h:t") 获得当前目录的名称
map mae :!echo "正在执行..." ;./build/<c-r>=expand("%:p:h:t")<cr><cr> :!<cr>
map mm mak mae :!<cr>

"设置a.vim
map mav :AV<cr>
map maa :A<cr>

map m1 :!<cr>
map mf :!qmake<cr>
map mw :w<cr>
map mq :qa<cr>
map mh :noh<cr>
map mcc <Leader>cc
map mco <Leader>co
map mcp :pclose
map mx :close<cr>
map mdf :Dox<cr>
map mda :DoxAuthor<cr>
map mdb :DoxBlock<cr>
map my "+y
map mp "+p

let g:EchoFuncKeyNext='<c-l>'
let g:EchoFuncKeyPrev='<c-h>'
let g:C_FormatDate='%Y-%m-%d'
set foldmethod=manual

"for latex-suite
let g:tex_flavor='latex'
"let g:Tex_DefaultTargetFormat='pdf'
map mll :!pdflatex %<cr>

"for neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1
let g:neocomplcache_enable_camel_case_completion=1
let g:neocomplcache_enable_underbar_completion=1
let g:neocomplcache_dictionary_filetype_lists={
			\'default':'',
			\'cmake':'/home/a/.vim/dictionary_cmake',
			\}
