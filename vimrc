
" 设置leader键为空格键
let mapleader=" " 

" 颜色主题
colorscheme solarized

" 开启行号
set number      

" 语法高亮
syntax on       

" 会变的行号
set relativenumber      

" 突出显示当前行"
set cursorline          
set nowrap

" 状态栏显示目前所执行的指令
set showcmd
set wildmenu

" 隐藏顶部标签栏"
set showtabline=0 

" 代码折叠
set foldmethod=marker      

set hlsearch
set incsearch
set smartcase
set ignorecase

" 光标距离上下五行
set scrolloff=5     

" 兼容性
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 显示匹配的括号
"set showmatch   

" 命令行为两行
set laststatus=2    

set mouse=a
set encoding=utf-8

let &t_ut=''

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set autochdir

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 退格可以回到上一行
set backspace=indent,eol,start  



" 括号自动补全

inoremap ''' ''''''<Esc>hhi
inoremap "" ""<++><Esc>4hi
inoremap [] []<Esc>i
inoremap {} {}<Esc>i
inoremap () ()<Esc>i
inoremap <> <><Esc>i
inoremap ,, <END><CR>
inoremap ,. <RIGHT>
inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l


noremap <LEADER><CR> :nohlsearch<CR>

noremap n nzz
noremap N Nzz
noremap J 5j
noremap K 5k


map <CR> o<Esc>
map R :source $MYVIMRC<CR>
map Q :q<CR>
map S :w<CR>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k

map <UP> :res +5<CR>
map <DOWN> :res -5<CR>
map <LEFT> :vertical resize -5<CR>
map <RIGHT> :vertical resize +5<CR>

" Compile function
map <LEADER>r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  endif
endfunc

call plug#begin('~/.vim/plugged')

" 状态栏
Plug 'vim-airline/vim-airline'

" 缩进显示
Plug 'yggdroot/indentline'

" 启动界面
Plug 'mhinz/vim-startify'

" surround
Plug 'tpope/vim-surround'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Ctrlp
Plug 'kien/ctrlp.vim'

call plug#end()

" NERDTree
noremap tt :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25

" 缩进显示
"let g:indentLine_setColors = 0
let g:indentLine_char = '|'

" 自动补全插件 "
filetype plugin on
let g:pydiction_location = '/Users/yuheihei/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 5

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>


"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>

" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Ctrlp
let g:ctrlp_map = '<c-p>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }





