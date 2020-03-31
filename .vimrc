set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" Plugin 'Chiel92/vim-autoformat'
" nnoremap <F6> :Autoformat<CR>
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0

"缩进指示线"
Plugin 'Yggdroot/indentLine'
let g:indentLine_char='┆'
let g:indentLine_enabled = 1


Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25


Plugin 'w0rp/ale'
 let g:ale_fix_on_save = 1
 let g:ale_completion_enabled = 1
 let g:ale_sign_column_always = 1
 let g:airline#extensions#ale#enabled = 1
"autopep8设置"
" Plugin 'tell-k/vim-autopep8'
" let g:autopep8_disable_show_diff=1
" autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

" Plugin 'sillybun/autoformatpythonstatement'
" autocmd FileType python let g:autoformatpython_enabled = 1

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" git 插件
Plugin 'tpope/vim-fugitive'

Plugin 'Valloric/YouCompleteMe'
"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
"关闭加载.ycm_extra_conf.py提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
"force recomile with syntastic
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" if has('gui_running')
"   set background=dark
"   colorscheme solarized
" else
"   colorscheme zenburn
" endif
"
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif
set encoding=utf-8

set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch

set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler

set undolevels=1000
set backspace=indent,eol,start

set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
