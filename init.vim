" Settings {{{
syntax enable
filetype plugin indent on
let mapleader=","
colorscheme subliminal-zest
set termguicolors
set guifont=Hurmit\ Nerd\ Font:h12
set autochdir
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
set showtabline=0
set smartcase
set smarttab
set textwidth=80
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'fish=sh', 'javascript', 'go', 'jsx', 'json', 'vim']
" }}}
" Mappings {{{
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
nnoremap <silent> <leader>g :GitGutterToggle<CR>
nnoremap <silent> <leader>a :ArgWrap<CR>
nnoremap <silent> <leader>z :Goyo<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
nnoremap <silent> <leader>s :w<CR>
nnoremap <silent> <leader>. @:
nnoremap <leader>q <C-w>c
nnoremap <leader>` :PlugInstall<CR>
nnoremap \b :ls<CR>:b
nnoremap <silent> <C-h> :bprev<CR>
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <silent> [ <Plug>(ale_previous_wrap)
nnoremap <silent> ] <Plug>(ale_next_wrap)
nnoremap <silent> <leader>f :ALEFix<CR>
nnoremap <silent> <leader>? :ALEDetail<CR>
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
nnoremap \ww <leader>ww
nnoremap <silent> \- :Goyo<CR>
nnoremap <leader>ef :e ~/.config/fish/config.fish<CR>
nnoremap <leader>ec :e ~/.editorconfig<CR>
nnoremap ! :!!<CR>
nnoremap & :&&<CR>
nnoremap <leader>da :1,$d<CR>
nnoremap <leader>ya ggVG"*y''<CR>
" }}}
" Vim Plug {{{
call plug#begin('~/.data/plugged')
Plug 'andrewradev/splitjoin.vim'
Plug 'andymass/vim-matchup'
Plug 'kalekundert/vim-coiled-snake'
Plug 'ap/vim-css-color'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'stautob/vim-fish'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'janko/vim-test'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'zhimsel/vim-stay'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-emoji'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mhinz/vim-startify'
Plug 'Konfekt/FastFold'
Plug 'pangloss/vim-javascript'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
call plug#end()
" }}}
" ALE {{{
let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ 'python': ['pylint'],
            \}
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_set_quickfix = 1
let g:ale_sign_error = emoji#for('fire')
let g:ale_sign_warning = emoji#for('star')
let g:ale_sql_sqlformat_executable = 'sqlformat --comma_first COMMA_FIRST -k upper -r'
let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'python': ['black', 'isort'],
            \   'javascript': ['eslint'],
            \   'sql': ['sqlformat'],
            \}
" }}}
" Jedi {{{
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#goto_command = ""
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_stubs_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = ""
let g:jedi#usages_command = ""
let g:jedi#completions_command = ""
let g:jedi#rename_command = ""
" }}}
" SimpylFold {{{
let g:SimpylFold_fold_import = 0
let g:SimpylFold_docstring_preview = 1
" }}}
" Matchup {{{
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_matchword_enabled = 0
" }}}
" Coc.nvim {{{
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" }}}
" Emmet {{{
let g:user_emmet_install_global = 0
" let g:user_zen_leader_key = '<C-Z>'
" autocmd FileType html,xhtml,tt2,tt2html,css imap <buffer> <Tab> <C-Z>, | imap <buffer> <C-N> <C-Z>n
autocmd FileType html,css,js,ts EmmetInstall
let g:user_emmet_settings = {
            \  'javascript' : {
            \      'extends' : 'jsx',
            \  },
            \  'typescript' : {
            \      'extends' : 'tsx',
            \  },
            \}
" }}}
" NerdTree {{{
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" }}}
" EditorConfig {{{
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig/'
" }}}
" Lightline {{{
let g:lightline = {'colorscheme': 'zeonica'}
let g:lightline.active = {'left': [['mode', 'paste'], ['gitbranch', 'filename', 'modified']], 'right': [['filetype', 'indent'], ['relativepath'], ['percent']]}
let g:lightline.component = {'percent': '%3p%%'}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline.component_function = {'gitbranch': 'LightlineFugitive', 'indent': 'Indentation'}
function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction

function! Indentation() abort
    if &expandtab
        " return '⇆ '.&shiftwidth
        return 'S'.&shiftwidth
    else
        " return '⇆ '.&tabstop
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
let g:markdown_syntax_conceal = 0
" }}}
" VimWiki {{{
let g:vimwiki_list = [{'path': '~/iCloud/Pretext/wiki', 'syntax': 'markdown'}]
let g:vimwiki_ext = '.md' " set extension to .md
let g:vimwiki_global_ext = 0 " make sure vimwiki doesn't own all .md files
" }}}
" Functions + Groups {{{
augroup remember_folds
    autocmd!
    au BufWinLeave ?* mkview 1
    au BufWinEnter ?* silent! loadview 1
augroup END
autocmd Filetype sql nnoremap <silent> <leader>f :%!sqlformat -i lower -s --indent_width 4 -k upper -r --comma_first COMMA_FIRST -<CR>
autocmd Filetype sql vnoremap <silent> f :!sqlformat -i lower -s -k upper -r --indent_width 4 --comma_first COMMA_FIRST -<CR>
autocmd Filetype vim setlocal foldmethod=marker
autocmd Filetype txt,md,gitcommit setlocal spell
autocmd Filetype md setlocal formatoptions+=a
autocmd Filetype md  setlocal wrap
if has('nvim')
    tnoremap <Esc> <C-\><C-n> tnoremap <C-v><Esc> <Esc>
    nnoremap <leader>ez :e ~/.config/nvim/colors/zeonica.vim<CR>
    nnoremap <leader>es :e ~/.config/nvim/colors/subliminal-zest.vim<CR>
    nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>
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
" }}}
