if &compatible
 set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')
 call dein#add('~/.cache/dein')

 call dein#add('airblade/vim-gitgutter')
 call dein#add('alvan/vim-closetag')
 call dein#add('bling/vim-airline')
 call dein#add('ctrlpvim/ctrlp.vim')
 call dein#add('https://gitlab.com/Lenovsky/nuake.git')
 call dein#add('jiangmiao/auto-pairs')
 call dein#add('mattn/emmet-vim')
 call dein#add('scrooloose/nerdtree')
 call dein#add('sheerun/vim-polyglot')
 call dein#add('terryma/vim-multiple-cursors')
 call dein#add('tpope/vim-commentary')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('JamshedVesuna/vim-markdown-preview')
 call dein#add('w0rp/ale')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
autocmd BufWritePre * %s/\s\+$//e
set termguicolors
set t_Co=256
syntax enable
colorscheme material-monokai
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set backspace=2
syntax on
filetype indent on
set autoindent
set number
set nobackup
set mouse=a
set so=999
set clipboard=unnamed
set listchars=tab:>-,trail:~,extends:>,precedes:<
set showmatch
set list
set cursorline
:imap jj <Esc>
:nmap ; :
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
set tabstop=2 shiftwidth=2 expandtab
set updatetime=100

map <C-j> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden=1
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " autoquit if only nerdtree is open
let g:airline_theme='minimalist'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:user_emmet_leader_key='<C-Z>'
let g:ale_sign_column_always = 1
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}
