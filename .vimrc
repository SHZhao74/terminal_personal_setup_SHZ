set nocompatible              " be iMproved, required
filetype on                  " required
 
 
"--------------
"" Color Scheme
"--------------
syntax enable
set background=dark
let g:molokai_original = 1
colorscheme molokai
 
 
"----------------
"" 編輯器基本設定
"----------------
 
" 默認顯示行號
set nu
 
" 設置（軟）製表符寬度為4：
set tabstop=4
set softtabstop=4
 
" 設置自動縮進：即每行的縮進值與上一行相等；使用 noautoindent 取消設置：
set autoindent
 
" 設置（自動）縮進的空格數為4
set shiftwidth=4
 
" 設置 使用 C/C++ 語言的自動縮進方式：
set cindent
 
" 智能縮進
set smartindent
 
"在狀態欄顯示正在輸入的命令
set showcmd
 
"為方便複製，用<F2>開啟/關閉行號顯示:
nnoremap <F2> :set nonumber!<CR>
 
"搜索的時候即時顯示結果
set incsearch
 
" 高亮搜索結果
set hlsearch
 
" 禁止循環查找
set nowrapscan
 
"  設置匹配模式，顯示匹配的括號
set showmatch
 
" 智能補全
set completeopt=longest,menu
 
" 設置歷史記錄為100條
set history=100
 
" 標尺，用於顯示光標位置的行號和列號，逗號分隔。每個窗口都有自己的標尺。如果窗口有狀態行，標尺在那裡顯示。否則，它顯示在屏幕的最後一行上。
set ruler
 
" 括號引號補全
:inoremap ( ()<ESC>i
:inoremap { {<CR>}<ESC>O
:inoremap [ []<ESC>i
 
" 摺疊設置
set foldmethod=syntax " 用語法高亮來定義摺疊
set foldlevel=100     " 啟動vim時不要自動摺疊代碼
 
" WinManager设置
" " NERD_Tree集成到WinManager
let g:NERDTree_title="[NERDTree]" 
function! NERDTree_Start()
    exec 'NERDTree'
endfunction
 
function! NERDTree_IsValid()
    return 1
endfunction
 
" 键盘映射，同时加入防止因winmanager和nerdtree冲突而导致空白页的语句
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
" 设置winmanager的宽度，默认为25
let g:winManagerWidth=30 
" 窗口布局
let g:winManagerWindowLayout='NERDTree|TagList'
" 如果所有编辑文件都关闭了，退出vim
let g:persistentBehaviour=0
set tabstop=4
