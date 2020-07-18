" Settings {{{
syntax enable
filetype plugin indent on
let mapleader=","
colorscheme subliminal_zest
set termguicolors
set guifont=Iosevka_Custom:h12
set updatetime=300
set cmdheight=1
" set autochdir
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set breakindent
" set guicursor+=i-n-v-c:blinkon0
set cindent
set cinkeys-=0#
set clipboard=unnamedplus
set copyindent
set cursorline
set encoding=UTF-8
set expandtab
set gdefault
set grepformat=%f:%l:%c:%m
set grepprg=ag\ --vimgrep\ $*
set hidden
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set mouse=a
set nohlsearch
set noshowmode
set number
set scrolloff=999
set shiftround
set showtabline=2
set smartcase
set smarttab
set textwidth=80
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'fish=sh', 'js=javascript', 'go', 'jsx', 'css', 'json=javascript', 'vim', 'sql']
let g:markdown_syntax_conceal = 0
let g:python_host_prog='/Users/nicholasprieto/.pyenv/shims/python'
" }}}
" Mappings {{{
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>s :w<CR>
nnoremap <silent> <leader>. @:
nnoremap <leader>q <C-w>c
nnoremap \b :ls<CR>:b
nnoremap <silent> <C-h> :bprev<CR>
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <buffer> o o
nnoremap <buffer> O O
nnoremap <buffer> s s
nnoremap <buffer> S S
nnoremap <CR> <C-]>
nnoremap <BS> <C-T>
nnoremap j gj
nnoremap k gk
nnoremap E $
vnoremap E $
vnoremap B ^
nnoremap B ^
nnoremap U <C-r>
nnoremap <Tab> >>
nnoremap <S-Tab> <<
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
vnoremap <C-j> <C-d>
vnoremap <C-k> <C-u>
nnoremap <M-h> <C-W>h
nnoremap <M-l> <C-w>l
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M--> <C-w>+
nnoremap <M-=> <C-w>-
nnoremap <M-9> <C-w><
nnoremap <M-0> <C-w>>
nnoremap <M-o> <C-w>o
nnoremap <M-\> <C-w>=
nnoremap <space> za
vnoremap <space> zf
nnoremap = gg=G''
nnoremap <silent> \- :Goyo<CR>
nnoremap <leader>ef :e ~/.config/fish/config.fish<CR>
nnoremap <leader>ec :e ~/.editorconfig<CR>
nnoremap <leader>ea :e ~/.config/alacritty/alacritty.yml<CR>
nnoremap ! :!!<CR>
nnoremap & :&&<CR>
nnoremap <leader>da :1,$d<CR>
nnoremap <leader>ya ggVG"*y''<CR>
" }}}
" Vim Plug {{{
nnoremap <leader>` :PlugInstall<CR>
call plug#begin('~/.data/plugged')
Plug 'alvan/vim-closetag'
Plug 'andrewradev/splitjoin.vim'
Plug 'andymass/vim-matchup'
Plug 'ap/vim-css-color'
Plug 'DougBeney/pickachu'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'godlygeek/tabular'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'itchyny/calendar.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'jmcantrell/vim-virtualenv'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-emoji'
Plug 'kchmck/vim-coffee-script'
Plug 'Konfekt/FastFold'
Plug 'lervag/vimtex'
Plug 'mattn/emmet-vim'
Plug 'maximbaz/lightline-ale'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'stautob/vim-fish'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/LeaderF'
Plug 'zhimsel/vim-stay'
" Plug 'xuhdev/vim-latex-live-preview'
call plug#end()
" }}}
" ALE {{{
nnoremap <silent> <C-[> :ALEPreviousWrap<CR>
nnoremap <silent> <C-]> :ALENextWrap<CR>
nnoremap <silent> <leader>af :ALEFix<CR>
nnoremap <silent> <leader>ad :ALEDetail<CR>
let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ 'python': ['flake8'],
            \}
let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'python': ['black', 'isort'],
            \   'javascript': ['prettier'],
            \   'sql': ['sqlformat'],
	    \ 	'html': ['prettier']
            \}
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
" let g:ale_set_quickfix = 1
let g:ale_sign_error = emoji#for('fire')
let g:ale_sign_warning = emoji#for('thought_balloon')
let g:ale_sql_sqlformat_executable = 'sqlformat --comma_first COMMA_FIRST -k upper -r'
let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"
let g:ale_python_flake8_options = '--max-line-length=88'
" }}}
" Calender Vim {{{
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" let g:calendar_cache_directory = '~/.config/nvim/cache/calendar.vim/'
" bass source ~/.cache/calendar.vim/credentials.vim
" }}}
" Emoji {{{
set completefunc=emoji#complete
" }}}
" Focus Events {{{
au FocusGained,BufEnter * :checktime
" }}}
" Vim-Latex {{{
let g:vimtex_compiler_progname = 'nvr'
" }}}
" SimpylFold {{{
let g:SimpylFold_fold_import = 0
let g:SimpylFold_docstring_preview = 1
" }}}
" Matchup {{{
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_motion_enabled = 1
let g:matchup_text_obj_enabled = 1
let g:matchup_surround_enabled = 1
let g:matchup_matchword_enabled = 0
" }}}
" Coc.nvim {{{
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>n <Plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
inoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
inoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" let g:coc_global_extensions = [
" 			\ 'coc-tsserver',
" 			\ 'coc-python',
" 			\ 'coc-json',
" 			\ 'coc-emoji',
" 			\ 'coc-css',
" 			\ 'coc-eslint',
" 			\ 'coc-prettier',
" 			\ 'coc-html',
" 			\ 'coc-markdownlint',
" 			\ 'coc-sql',
" 			\ 'coc-vetur',
" 			\ 'coc-git'
" ]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd BufNew,BufEnter *.md,*.txt execute "silent! CocDisable"
autocmd BufLeave *.md,*.txt execute "silent! CocEnable"
" }}}
" Emmet {{{
let g:user_emmet_install_global = 0
autocmd FileType html,css,js,ts,javascript,typescript EmmetInstall
imap <expr> \\ emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
            \  'javascript' : {
            \      'extends' : 'jsx',
            \  },
            \  'typescript' : {
            \      'extends' : 'tsx',
            \  },
            \}
" }}}
" LeaderF {{{
let g:Lf_WindowPosition = 'top'
" let g:Lf_PreviewInPopup = 1
" }}}
" NerdTree {{{
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsDefaultFolderOpenSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol=''
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
" let g:webdevicons_conceal_nerdtree_brackets = 1
" augroup nerdtree
"   autocmd!
"   autocmd FileType nerdtree syntax clear NERDTreeFlags
"   autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
"   autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
"   autocmd FileType nerdtree setlocal conceallevel=3
"   autocmd FileType nerdtree setlocal concealcursor=nvic
" augroup END
" let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
" let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
" }}}
" Nerdtree-Git {{{
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" }}}
" EditorConfig {{{
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig/'
" }}}
" Lightline {{{
let g:lightline = {'colorscheme': 'subliminal_zest'}
let g:lightline#bufferline#enable_devicons = 1
" let g:lightline#ale#indicator_checking =
let g:lightline#ale#indicator_infos = emoji#for('scroll') . ' '
let g:lightline#ale#indicator_warnings = emoji#for('thought_balloon') . ' '
let g:lightline#ale#indicator_errors = emoji#for('fire') . ' '
let g:lightline#bufferline#filename_modifier = ':t'
" let g:lightline#bufferline#modified = ' ' . ''
" let g:lightline#ale#indicator_infos = '' . ':'
" let g:lightline#ale#indicator_warnings = '' . ':'
" let g:lightline#ale#indicator_errors = '' . ':'
" let g:lightline@ale#indicator_ok =
" let g:lightline = {
" 			\ 'active': {
" 			\ 	'left': [['mode', 'paste'],
" 			\ 		['gitbranch', 'modified'],
" 			\ 		['relativepath'],
" 			\ 		[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok']],
" 			\ 	'right': [['filetype', 'indent'],
" 			\ 		['percent']]
" 	}
" }
let g:lightline.active = {'left': [['mode', 'paste'], ['relativepath']], 'right': [['filetype', 'indent'], ['gitbranch'], ['percent'], [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok']]}
let g:lightline.component = {'percent': '%3p%%'}
let g:lightline.component_function = {'gitbranch': 'LightlineFugitive', 'indent': 'Indentation'}
let g:lightline.tabline = {'left': [['buffers']], 'right': []}
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \  'buffers': 'lightline#bufferline#buffers'
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \     'buffers': 'tabsel'
      \ }
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction

command! LightlineReload call LightlineReload()
function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! Indentation() abort
    if &expandtab
        return 'S'.&shiftwidth
    else
        return 'T'.&tabstop
    endif
endfunction

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
" }}}
" Goyo + LimeLight {{{
let g:limelight_conceal_guifg = 'gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" }}}
" VimWiki {{{
let g:vimwiki_list = [{'path': '~/iCloud/Pretext/wiki', 'syntax': 'markdown'}]
let g:vimwiki_ext = '.md' " set extension to .md
let g:vimwiki_global_ext = 0 " make sure vimwiki doesn't own all .md files
" }}}
" Functions + Groups {{{
autocmd BufRead,BufNewFile *conf* setf dosini
augroup remember_folds
    autocmd!
    au BufWinLeave ?* mkview 1
    au BufWinEnter ?* silent! loadview 1
augroup END
autocmd Filetype sql nnoremap <silent> <leader>af :%!sqlformat -i lower -s --indent_width 4 -k upper -r --comma_first COMMA_FIRST -<CR>
autocmd Filetype sql vnoremap <silent> f :!sqlformat -i lower -s -k upper -r --indent_width 4 --comma_first COMMA_FIRST -<CR>
autocmd Filetype vim setlocal foldmethod=marker
autocmd Filetype markdown nnoremap <leader>i :VimwikiToggleListItem<CR>
if has('vim')
    tnoremap <Esc> <C-\><C-n> tnoremap <C-v><Esc> <Esc>
    nnoremap <leader>es :e ~/.vim/colors/subliminal-zest.vim<CR>
    nnoremap <leader>er :so ~/.vimrc<CR>
endif
if has('nvim')
    tnoremap <Esc> <C-\><C-n> tnoremap <C-v><Esc> <Esc>
    nnoremap <leader>ez :e ~/.config/nvim/colors/zeonica.vim<CR>
    nnoremap <leader>es :e ~/.config/nvim/colors/subliminal_zest.vim<CR>
    nnoremap <leader>er :so ~/.config/nvim/init.vim<CR>
    nnoremap <leader>t :term<CR>
endif
nmap <leader>y :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
command! -nargs=1 -complete=help H :enew | :set buftype=help | :h <args>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" }}}
