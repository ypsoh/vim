call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'w0ng/vim-hybrid'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install ‚Äîall' }
Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'hdima/python-syntax'

Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'terryma/vim-multiple-cursors'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'xavierd/clang_complete'

call plug#end()

set nocp                    " 'compatible' is not set
filetype plugin indent on          " plugins are enabled

set background=dark
colorscheme hybrid

set relativenumber 
set number    
set showmatch
set ruler

autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype c setlocal ts=4 sw=4 expandtab

set clipboard=unnamed

nmap <C-g> :NERDTreeToggle<CR>
noremap <C-t> :FZF<CR>

imap jj <ESC>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
let g:airline_powerline_fonts=1


let g:deoplete#enable_at_startup = 1
let python_highlight_all = 1

let vim_markdown_preview_github=1
let vim_markdown_preview_temp_file=0

let g:clang_library_path="/usr/local/opt/llvm/lib"

" Allow multiple cursors to function quickly even in large files
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if has('nvim')
    call deoplete#disable()
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if has('nvim')
    call deoplete#enable()
  endif
endfunction
