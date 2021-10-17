""""""""""""""""""""""""
"""""Chris I. Muñoz"""""
""chris.mzpl@gmail.com""
""""""""""""""""""""""""
scriptencoding utf8
set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set spell
"set spelllang=en_us
"set spell
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --------------------------------------------------
" UI and utilities
" --------------------------------------------------
" Better scrolling
Plugin 'terryma/vim-smooth-scroll'

Plugin 'joshdick/onedark.vim'

 "A tree explorer
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'  }

" better statusline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes',

" Files fuzzy finder
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" multiple cursors like a sublime text
Plugin 'terryma/vim-multiple-cursors'

" Indentation mark for scope
Plugin 'Yggdroot/indentLine'

" Icons
Plugin 'ryanoasis/vim-devicons'

" Fugitive
Plugin 'tpope/vim-fugitive'

"Vimspector
Plugin 'puremourning/vimspector'

" Gitgutter 
Plugin 'airblade/vim-gitgutter'

Plugin 'preservim/nerdcommenter'

" Conquer of completion (coc vim)
Plugin 'neoclide/coc.nvim', {'do': 'yarn install' }

Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
let g:prettier#config#config_precedence = 'prefer-file'

" --------------------------------------------------
" GO
" --------------------------------------------------
 Plugin 'sebdah/vim-delve'

" --------------------------------------------------
" TYPESCRIPT
" --------------------------------------------------
" Vim go plugins
 Plugin 'leafgarland/typescript-vim'
 Plugin 'Shougo/vimproc.vim'  "Then cd ~/.vim/bundle/vimproc.vim && make
 Plugin 'alvan/vim-closetag'

" --------------------------------------------------
" Development tools and facilities
" --------------------------------------------------

" Complete pairs 
Plugin 'jiangmiao/auto-pairs'

" Complete with Tab
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==================================================
"   configuration
" ==================================================
"
" --------------------------------------------------
" General configuration
" --------------------------------------------------
" if hidden is not set, TextEdit might fail.
set hidden

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" " --------------------------------------------------
" Vimspector configuration
" --------------------------------------------------

let g:vimspector_enable_mappings = 'HUMAN'
"packadd! vimspector


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
  if (has("termguicolors"))
    set termguicolors
  endif

syntax on
colorscheme onedark


set tabstop=2 shiftwidth=2 softtabstop=2 expandtab shiftround
set number relativenumber
set noswapfile nobackup nowritebackup autowrite
set showmatch showcmd
set splitright
set cursorline
set nofoldenable

highlight specialkey ctermfg=8
set clipboard=unnamed
set completeopt=longest,menu
set scrolloff=10 sidescrolloff=5
set complete=.,w,b,u,t
set wildmenu wildmode=longest,list:longest
set gdefault incsearch smartcase
set guifont=<font_name>:h<font_size>
set guifont=droid\ sans\ mono\ for\ powerline\ plus\ nerd\ file\ types:h11
au bufread,bufnewfile *.html.mustache set filetype=html
" load doxygen syntax aumatically
let g:load_doxygen_syntax=1
" make it more obvious which paren i'm on
hi matchparen cterm=none ctermbg=3 ctermfg=0
autocmd filetype nerdtree setlocal nolist

" --------------------------------------------------
" Vim-airline configuration
" --------------------------------------------------
set background=dark " Set dark theme in solarized
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'gruvbox'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '»'
  let g:airline_left_sep = ''
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = ''
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

" --------------------------------------------------
" Deoplete configuration
" --------------------------------------------------
"let g:deoplete#enable_at_startup = 1
" --------------------------------------------------
" Deoplete configuration
" --------------------------------------------------
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" --------------------------------------------------
" nerdcommenter for jsx
" --------------------------------------------------
let g:NERDCustomDelimiters = { 'javascriptreact': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' } }

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

"nnoremap <C-p> :FZF<cr>
silent! nmap <C-p> :GFiles<cr>

"vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" ==================================================
" " Leader mappings & Key mappings
" " ==================================================
"Set Leadermap
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
" Avoid Esc key jj
imap jj <Esc>
" Avoid Esc key ll
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
nmap <silent> <leader>tp :DlvToggleBreakpoint<cr>
nmap <silent> <leader>dd :DlvDebug<cr>

" ==================================================
" Correct common stupid mistakes
" ==================================================
"command! -bang -nargs=* -complete=file E e<bang> <args>
"command! -bang -nargs=* -complete=file W w<bang> <args>
"command! -bang -nargs=* -complete=file Wq wq<bang> <args>
"command! -bang -nargs=* -complete=file WQ wq<bang> <args>
"command! -bang Wa wa<bang>
"command! -bang WA wa<bang>
"command! -bang Q q<bang>
"command! -bang QA qa<bang>
"command! -bang Qa qa<bang>


" ==================================================
" close tag configuration
" ==================================================
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.js"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
