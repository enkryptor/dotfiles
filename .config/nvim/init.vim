" Basic setup -----------------------------------

" modern mode, is default in neovim
set nocompatible
filetype plugin on
syntax enable

set langmenu=en_US
set showcmd

let $LANG = 'en_US'

" Load plugins
call plug#begin("~/.vim/plugged")
  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'
  Plug 'sheerun/vim-polyglot'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

colorscheme onedark

" tab-completion for subfolders for :find
set path=.,**

" display matches on tab complete for :find and :b
set wildmenu

" file browsing
let g:netrw_banner=0       " disable the banner
"let g:netrw_browse_split=4 " open in prior window
"let g:netrw_altv=1         " open splits to the right
let g:netrw_liststyle=3    " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()

" show line numbers
set number

set laststatus=2

" Language settings -----------------------------

" langmap hack
"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" russian keymap
set keymap=russian-jcukenwin

" default keymap is en
set iminsert=0
set imsearch=0

" keys remaps
nnoremap <esc><esc> :noh<return>

" Plugin settings -------------------------------
" Lightline settings
let g:lightline = { 'colorscheme': 'onedark' }

" Fzf settings
nnoremap <C-p> :Files<CR>
let g:fzf_preview_window = []



" NerdTree settings
" let g:NERDTreeShowHidden = 1
" let g:NERDTreeMinimalUI = 0
" let g:NERDTreeIgnore = []
" let g:NERDTreeStatusline = ''
" let g:NERDTreeWinPos = "right"

" NerdTree shortcuts
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTreeMirror | NERDTreeFocus | wincmd p

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * silent NERDTreeMirror
" or Mirror the NERDTree before showing it. This makes it the same on all tabs.
" nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

" open new split panes to right and below
"set splitright
"set splitbelow

