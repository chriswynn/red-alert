" NeoBundle Scripts-----------------------------
if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'

" ------------------------------------
" THIS IS WHERE YOUR PLUGINS WILL COME
" ------------------------------------
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'bling/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'itchyny/vim-stylus'
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'alvan/vim-closetag'
  NeoBundle 'jiangmiao/auto-pairs'
  NeoBundle 'hhsnopek/vim-sugarss'
  NeoBundle 'posva/vim-vue'
  NeoBundle 'digitaltoad/vim-pug'
  NeoBundle 'calebeby/vim-sugarml'
  NeoBundle 'fatih/vim-go'
  NeoBundle 'w0rp/ale'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'tpope/vim-commentary'
  NeoBundle 'justinj/vim-pico8-syntax'
call neobundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']
map <C-n> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
syntax enable
colorscheme hydrangea
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:airline_theme='tomorrow'
let g:airline#extensions#ale#enabled = 1
let g:user_emmet_leader_key='<C-Z>'
let g:ale_sign_column_always = 1
filetype plugin on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file
set mouse=a
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
:imap jj <Esc>
:nmap ; :
set tabstop=2 shiftwidth=2 expandtab
:hi CursorLine cterm=none
:hi CursorLine gui=none
au BufRead,BufNewFile *.sss set filetype=stylus
au BufRead,BufNewFile *.sgr set filetype=pug
set termguicolors
