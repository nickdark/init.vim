" Settings
syntax enable
filetype plugin indent on
let mapleader=","
colorscheme subliminal-zest
set termguicolors
set autochdir
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set breakindent
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
" set formatprg=sqlparse
" Mappings
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
nnoremap <silent> <leader>g :GitGutterToggle<CR>
nnoremap <silent> <leader>? :ALEDetail<CR>
nnoremap <silent> <leader>a :ArgWrap<CR>
nnoremap <silent> <leader>z :Goyo<CR>
nnoremap <silent> <leader>s :w<CR>
nnoremap <silent> <leader>f :Autoformat<CR>
nnoremap <silent> <leader>f :SQLU_Formatter<CR>
nnoremap <silent> <leader>. @:
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>q <C-w>c
nnoremap <leader>` :PlugInstall<CR>
nnoremap <leader>t :term<CR>
nnoremap \b :ls<CR>:b
nnoremap <silent> <C-h> :bprev<CR>
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <CR> <C-]> 
nnoremap <silent> <BS> <C-T>
nmap <silent> [ <Plug>(ale_previous_wrap)
nmap <silent> ] <Plug>(ale_next_wrap)
nnoremap <C-p> :Files<CR>
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
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>ef :e ~/.config/fish/config.fish<CR>
nnoremap <leader>en :e ~/Documents/notes.md<CR>
nnoremap <leader>e0 :e ~/Documents/notes<CR>
nnoremap <leader>ec :e ~/.editorconfig<CR>
nnoremap <leader>ez :e ~/.config/nvim/colors/zeonica.vim<CR>
nnoremap <leader>ey :e ~/.yabairc<CR>
nnoremap <leader>es :e ~/.skhdrc<CR>
nnoremap ! :!!<CR>
nnoremap & :&&<CR>
nnoremap <leader>da :1,$d<CR>
nnoremap <leader>ya ggVG"*y''<CR>
" Vim Plug
call plug#begin('~/.data/plugged')
Plug 'andrewradev/splitjoin.vim'
Plug 'andymass/vim-matchup'
Plug 'ap/vim-css-color'
Plug 'Chiel92/vim-autoformat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish'
Plug 'davidhalter/jedi-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'janko/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'
Plug 'alcesleo/vim-uppercase-sql'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'w0rp/ale'
call plug#end()
" AutoFormat
let g:formatdef_sql = '"sqlformat reindent --keywords upper --identifiers lower -"'
let g:formatters_sql = ['sql']

" ALE
let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ 'python': ['pylint'],
            \}
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_set_quickfix = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'python': ['yapf'],
            \}
highlight ALEErrorSign guibg=NONE guifg=red
highlight ALEWarningSign guibg=NONE guifg=yellow
" Matchup
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_matchword_enabled = 0
" Emmet
let g:user_emmet_settings = {
            \  'javascript' : {
            \      'extends' : 'jsx',
            \  },
            \  'typescript' : {
            \      'extends' : 'tsx',
            \  },
            \}
" NerdTree
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = 1
" Ack/Ag
let g:ackprg = 'ag --vimgrep --smart-case'
command! -bang -nargs=* Ag
            \ call fzf#vim#grep(
            \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
            \   fzf#vim#with_preview(), <bang>0)
" FZF
" let g:fzf_preview_window = 'right:50%'
" if (executable('ag'))
"     let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
" endif
" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig/'
" Lightline
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
" Goyo + LimeLight
let g:limelight_conceal_guifg = 'gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:markdown_syntax_conceal = 0
" VimWiki
let g:vimwiki_list = [{'path': '~/iCloud/wiki', 'syntax': 'markdown'}]
" Functions + Groups
augroup remember_folds
    autocmd!
    au BufWinLeave ?* mkview 1
    au BufWinEnter ?* silent loadview 1
augroup END
if has('nvim')
    tnoremap <Esc> <C-\><C-n> tnoremap <C-v><Esc> <Esc>
endif
nmap <leader>y :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
