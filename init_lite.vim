set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --------------------------------------------------
" UI and utilities
" --------------------------------------------------
" Plugin for change things surround text
Plugin 'tpope/vim-surround'

" Better scrolling
Plugin 'terryma/vim-smooth-scroll'

" Color schemes:
Plugin 'romainl/flattened'

 "A tree explorer
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'  }

" better statusline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes',

" Files fuzzy finder
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'junegunn/fzf.vim'

" multiple cursors like a sublime text
Plugin 'terryma/vim-multiple-cursors'

" Indentation mark for scope
Plugin 'Yggdroot/indentLine'

" Lint engine
Plugin 'w0rp/ale'

" --------------------------------------------------
" GO
" --------------------------------------------------
" Vim go plugins
 Plugin 'fatih/vim-go'


" --------------------------------------------------
" Development tools and facilities
" --------------------------------------------------

" Complete pairs 
Plugin 'jiangmiao/auto-pairs'
" Complete lines
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }

" Complete with Tab
Plugin 'ervandew/supertab'

" Strip white spaces
Plugin 'ntpeters/vim-better-whitespace'

" Easy Commenter
Plugin 'scrooloose/nerdcommenter'
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==================================================
"   configuration
" ==================================================
"
" --------------------------------------------------
" Vim-smooth-scroll basic configuration
" --------------------------------------------------
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR><Paste>

" --------------------------------------------------
" color scheme configuration
" --------------------------------------------------
syntax enable
:color flattened_dark
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab shiftround
set number relativenumber
set noswapfile nobackup nowritebackup autowrite
set showmatch showcmd
set splitright
set cursorline
set nofoldenable

highlight specialkey ctermfg=8
set clipboard=unnamed
set pastetoggle=<f2>
set completeopt=longest,menu
set scrolloff=10 sidescrolloff=5
set complete=.,w,b,u,t
set wildmenu wildmode=longest,list:longest
set gdefault incsearch smartcase
" set rule on 100
"set colorcolumn=100
 "custo set
set guifont=<font_name>:h<font_size>
set guifont=droid\ sans\ mono\ for\ powerline\ plus\ nerd\ file\ types:h11
au bufread,bufnewfile *.html.mustache set filetype=html
" load doxygen syntax aumatically
let g:load_doxygen_syntax=1
" make it more obvious which paren i'm on
hi matchparen cterm=none ctermbg=3 ctermfg=0
" strip white space for the following file types
autocmd filetype c,cpp,ruby,javascript,java,php,python
autocmd bufwritepre <buffer> stripwhitespace
" nerdtree no list chars
autocmd filetype nerdtree setlocal nolist




" --------------------------------------------------
" Vim-airline configuration
" --------------------------------------------------
set background=dark " Set dark theme in solarized
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

  " old vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'

" --------------------------------------------------
" Deoplete configuration
" --------------------------------------------------
let g:deoplete#enable_at_startup = 1

" --------------------------------------------------
" FZF configuration
" --------------------------------------------------
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

nnoremap <C-p> :FZF<cr>


" --------------------------------------------------
" A.l.e Configuration
" --------------------------------------------------
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'ruby': ['rubocop'],
\   'css': ['prettier'],
\}
let g:ale_enabled = 1
let g:ale_fix_on_save = 1

" ==================================================
" " Leader mappings & Key mappings
" " ==================================================
" Set Leadermap
let mapleader = "\<Space>"
" Open Neo Vim config
 nmap <leader>vi :tabe ~/.config/nvim/init.vim<cr>
" Source .nvimrc and install plugins
noremap <leader>pi :w<cr> :source ~/.config/nvim/init.vim<cr>:PluginInstall<cr>
" Toggle tree navigator (NERDTree plugin)
 noremap <Leader>k :NERDTreeToggle<cr>
" Toggle tagbar
 nmap <leader>t :TagbarToggle<cr>
" Switch between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Avoid Esc key
imap jj <Esc>
" Add shortcut to end of line
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

" ==================================================
" Correct common stupid mistakes
" ==================================================
command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
