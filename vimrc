" Modified: https://github.com/ziegfiroyt/react-vimrc/blob/master/.vimrc
" Install vim-plug if not installed
set shell=/usr/local/bin/fish
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

""" Tabs #tabs
" - Two spaces wide
set tabstop=2
set softtabstop=2
" - Expand them all
set expandtab
" - Indent by 2 spaces by default
set shiftwidth=2
" turn off mouse
set mouse=""
""" Leader #leader
let g:mapleader=','
"" Format Options #format-options
set formatoptions=tcrq
set textwidth=80
set guicursor=a:blinkon100

"" Libraries
call plug#begin()
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'thaerkh/vim-workspace'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'scrooloose/nerdcommenter'
Plug 'ipod825/vim-netranger'
Plug 'kien/ctrlp.vim'
call plug#end()

"Auto-pairs"
let g:AutoPairsFlyMode = 1

" Vim-JSX-Pretty
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" NerdCommenter
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" Autoformat on save, uses Prettier by default
autocmd BufWritePre *.js,*.jsx,*.css,*.json,*.graphql,*.md Neoformat
autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --parser\ flow
let g:neoformat_try_formatprg = 1 " Use formatprg when available
let g:neoformat_enabled_javascript = ['prettier-eslint', 'prettier']
let g:neoformat_enabled_json = ['prettier-eslint', 'prettier']
let g:neoformat_enabled_css = ['prettier-eslint', 'prettier']
let g:neoformat_enabled_less = ['prettier-eslint', 'prettier']
let g:neoformat_run_all_formatters = 1

" NerdTree Settings
" Open on Load
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1

" CocSettings
" Use Tab for Autocomplete
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()

" Vim-Workspace
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Vim-Numbertoggle
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
