
" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

"autocmd vimEnter * NERDTree

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

let NERDTreeshowBookmarks=1

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.

syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
source /etc/vim/vimrc.local
endif

set nu "显示行号

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8
set fileencoding=utf-8

set shiftwidth=4

set autoindent
set smartindent

set showmatch


"********************************************
"Config .vimrc
"
"https://github.com/VundleVim/Vundle.vim

set nocompatible " 必需。
filetype off "必须。

" 在这里设置你的运行时环境的路径。
set rtp+=~/.vim/bundle/Vundle.vim

"初始化vundle
call vundle#begin()

" 这一行应该永远放在开头。
Plugin 'gmarik/Vundle.vim'

"Plugin install

Plugin 'Valloric/YouCompleteME'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'geordanr/pylint'
"plugin 'nvie/vim-flake8'
"Plugin 'edsono/vim-matchit'
"Plugin 'elzr/vim-json'
"Plugin 'honza/vim-snippets'
"Plugin 'justinmk/vim-sneak'
"Plugin 'kien/ctrlp.vim'
"Plugin 'ludovicchabant/vim-lawrencium'
"Plugin 'majutsushi/tagbar'
"Plugin 'mhina/vim-signify'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-sleuth'
"Plugin 'tpope/vim-surround'
"Plugin 'tyru/open-browser.vim'
"Plugin 'vim-scripts/a.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

"所有的插件都应该在这一行之前。
call vundle#end() "必需。

filetype plugin indent on

"设置全局配置文件的路径
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
"开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"在接受补全后不分裂出一个窗口显示接受的项
"set completeopt-=preview
""不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
"每次重新生成匹配项，禁止缓存匹配项
"let g:ycm_cache_omnifunc=0
""在注释中也可以补全
let g:ycm_complete_in_comments=1
"输入第一个字符就开始补全
"let g:ycm_min_num_of_chars_for_completion=1
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_use_ultisnips_completer=0

set completeopt=preview,menu
set completeopt=longest,menu

"自动补全命令时候使用菜单式匹配列表

set wildmenu
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complet

