" =================================================
"             Vim-Plug Configuration                
" --------------------------------------------------
scriptencoding utf8

" Set up vim-plug if missing and install plugins

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !mkdir -p ~/.config/nvim/autoload
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  augroup plug_install
    au!
    au! VimEnter * PlugInstall
  augroup END
endif

if exists(':Neomake')
" Check for lint errors on open & write
  autocmd BufRead,BufWritePost,BufEnter *.js,*.jsx silent! Neomake standard|redraw
endif

call plug#begin('~/.config/nvim/plugged')

" --------------------------------------------------
" Syntax highlight and language specific
" --------------------------------------------------
" Markdown
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' } | Plug 'kana/vim-textobj-user'
Plug 'janko-m/vim-test', { 'for': 'ruby' }
" tmux navigator
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'

" API blueprint
Plug 'kylef/apiblueprint.vim'

" Console plugin
Plug 'vim-scripts/Conque-Shell'


" ==================================================
" UI and utilities
" ==================================================
Plug 'tpope/vim-surround'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" Notice Git File changes
Plug 'airblade/vim-gitgutter'

" Dev icons
Plug 'ryanoasis/vim-devicons'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Better scrolling
Plug 'terryma/vim-smooth-scroll'

" Better color schemes.
Plug 'easysid/mod8.vim'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'jonathanfilip/vim-lucius'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'mkarmona/colorsbox'
Plug 'nightsense/seabird'
" A tree explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'romainl/flattened'

" Better statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes',

" Files fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'ctrlpvim/ctrlp.vim'


" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Indentation mark for scope
Plug 'Yggdroot/indentLine'
" Vim go plugins
Plug 'fatih/vim-go'

" ==================================================
" Development tools and facilities
" ==================================================
" Enahanced search tool.
Plug 'mileszs/ack.vim'

" End helper
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe', {
      \ 'do': './install.py --clang-completer --gocode-completer --system-libclang'
      \ }
" YCM config generator
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" UltiSnips
Plug 'SirVer/ultisnips'

" Snnipets collection
Plug 'honza/vim-snippets'

" Tab helper
Plug 'ervandew/supertab'

" Strip white spaces
Plug 'ntpeters/vim-better-whitespace'

" Autoformat code
Plug 'Chiel92/vim-autoformat'

" Linter
Plug 'benekastah/neomake', { 'on': 'Neomake' }

" Commenter
Plug 'scrooloose/nerdcommenter'

" Doxygen generator
Plug 'mrtazz/DoxygenToolkit.vim'

" Dash integration
Plug 'rizzatti/dash.vim'

" CMake integration
Plug 'feed57005/vim-cmakeproj'

" Tag bar
Plug 'majutsushi/tagbar'
call plug#end()

filetype plugin indent on " required for Vim-Plug

" Here
" ==================================================
"   Configuration
" ==================================================
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm
"set t_Co=256
"set termencoding=utf-8

" ==================================================
"   Another Configuration
" ==================================================

syntax enable
"set background=dark

 "Gruvbox related
"let g:gruvbox_bold=1
"let g:gruvbox_italic=1
"let g:gruvbox_underline=1
"let g:gruvbox_contrast_dark='light'
"let g:gruvbox_invert_indent_guides=1
colorscheme stormpetrel

set tabstop=2 shiftwidth=2 softtabstop=2 expandtab shiftround
set number relativenumber
set noswapfile nobackup nowritebackup autowrite
set showmatch showcmd
set splitright
set cursorline
set nofoldenable
" Mierdas que muestran el tab-teo
set list listchars=tab:༏\ ,trail:•,extends:»,precedes:«,nbsp:¬
" color de charlist=tab
highlight SpecialKey ctermfg=8
set clipboard=unnamed
set pastetoggle=<F2>
set completeopt=longest,menu
set scrolloff=10 sidescrolloff=5
set complete=.,w,b,u,t
set wildmenu wildmode=longest,list:longest
set gdefault incsearch smartcase
" set rule on 100
"set colorcolumn=100
 "custo set
set guifont=<FONT_NAME>:h<FONT_SIZE>
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
au BufRead,BufNewFile *.html.mustache set filetype=html
" load doxygen syntax aumatically
let g:load_doxygen_syntax=1
" Make it more obvious which paren I'm on
hi MatchParen cterm=none ctermbg=3 ctermfg=0
" Strip white space for the following file types
autocmd FileType c,cpp,ruby,javascript,java,php,python
      \ autocmd BufWritePre <buffer> StripWhitespace
" Nerdtree no list chars
autocmd FileType nerdtree setlocal nolist

if filereadable(expand("~/.config/nvim/ignore.vim"))
  source ~/.config/nvim/ignore.vim
endif

" ==================================================
" Vim-airline configuration
" ==================================================
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


" ==================================================
" Leader mappings & Key mappings
" ==================================================
let mapleader = "\<Space>"
" Open Neo Vim config
nmap <leader>vi :tabe ~/.config/nvim/init.vim<cr>
" Source .nvimrc and install plugins
noremap <leader>pi :w<cr> :source ~/.config/nvim/init.vim<cr>:PlugInstall<cr>
" Source .nvimrc
noremap <leader>so :w<cr> :source ~/.config/nvim/init.vim<cr>
" Toggle tree navigator (NERDTree plugin)
noremap <Leader>k :NERDTreeToggle<cr>
" Jump to definition (YCM plugin)
nnoremap <leader>jd :YcmCompleter GoTo<cr>
" Switch between the last two files
nnoremap <leader><leader> <c-^>
" Navigates through list of errors
nnoremap<leader>ll :ll<cr>
" Toggle search highlight
command! C nohlsearch
" Toggle tagbar
nmap <leader>t :TagbarToggle<cr>
" Resize panes
nmap + <C-W>>
nmap - <C-W><
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
" Rubocop autocorrect
let g:vimrubocop_keymap = 0
nmap <Leader>ra :RuboCop -a<cr>
" Exit terminal mode
tnoremap <Leader>e <C-\><C-n>
tnoremap <A-J> <C-\><C-n><C-W><C-J>
tnoremap <A-K> <C-\><C-n><C-W><C-K>
tnoremap <A-L> <C-\><C-n><C-W><C-L>
tnoremap <A-H> <C-\><C-n><C-W><C-H>
"nmap k gk
"nmap j gj

" ==================================================
" UltiSnips configuration
" ==================================================
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/ultisnips'
let g:UltiSnipsSnippetDirectories = ['ultisnips']
let g:UltiSnipsEditSplit = 'vertical'

" ==================================================
" VimAutoformat configuration
" ==================================================
" C/C++
let g:formatdef_clangfile = "'clang-format -style=file'"
let g:formatdef_llvmstyle = "'clang-format -style=llvm'"
let g:formatters_cpp = ['clangfile', 'llvmstyle']
autocmd FileType c,cpp autocmd BufWritePre <buffer> :Autoformat

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
"inoremap  <Up>     <NOP>
"inoremap  <Down>   <NOP>
"inoremap  <Left>   <NOP>
"inoremap  <Right>  <NOP>
"noremap   <Up>     <NOP>
"noremap   <Down>   <NOP>
"noremap   <Left>   <NOP>
"noremap   <Right>  <NOP>

" ==================================================
" FZF configuration
" ==================================================
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

nnoremap <C-p> :FZF<cr>
" ==================================================
" YCM configuration
" ==================================================
let ycm_autoclose_preview_window_after_completion = 1
let ycm_min_num_of_chars_for_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '!'
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" ==================================================
" Vim smooth scroll configuration
" ==================================================
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 4, 2)<cr>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 4, 2)<cr>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll * 2, 4, 4)<cr>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 4, 4)<cr>

" ==================================================
" CMake project configuration
" ==================================================
let g:cmakeproj_default_generator = 'make'

" ==================================================
" Neomake configuration
" ==================================================
" Ruby
let g:neomake_ruby_enabled_maker = ["rubocop", "mri"]
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost * Neomake
autocmd BufWrite *.js Neomake
autocmd InsertLeave *.js Neomake

" ==================================================
" Vim-test configuration
" ==================================================
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>r :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

function! VerticalSplitStrategy(cmd)
  vertical botright new | call termopen(a:cmd) | startinsert
endfunction
let g:test#custom_strategies = {'terminal_vsplit': function('VerticalSplitStrategy')}
let g:test#strategy = 'terminal_vsplit'

" ==================================================
" DoxyenToolkit configuration
" ==================================================
let g:DoxygenToolkit_commentType = 'C++'
let g:DoxygenToolkit_briefTag_pre = '\brief '
let g:DoxygenToolkit_paramTag_pre = '\param '
let g:DoxygenToolkit_returnTag = '\return '
let g:DoxygenToolkit_fileTag = '\file '
let g:DoxygenToolkit_authorTag = '\author '
let g:DoxygenToolkit_blockTag = '\name '
let g:DoxygenToolkit_versionTag = '\version '
let g:DoxygenToolkit_classTag = '\class '
let g:DoxygenToolkit_dateTag = '\date '

" ==================================================
" Vim markdown configuration
" ==================================================
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1

" ==================================================
" Vim markdown preview configuration
" ==================================================
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-P>'
let vim_markdown_preview_toggle=1


" ==================================================
" Vim markdown preview configuration
" ==================================================
let NERDTreeShowHidden=0


" ==================================================
" Vim markdown preview configuration
" ==================================================
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

 
