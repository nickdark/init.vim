syntax enable
filetype plugin indent on
let mapleader=","
colorscheme zeonica
set termguicolors
set autochdir
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set cindent
set cinkeys-=0#
set clipboard=unnamedplus
set encoding=UTF-8
set gdefault
set grepformat=%f:%l:%c:%m
set grepprg=ag\ --vimgrep\ $*
set hidden
set ignorecase
set incsearch
set laststatus=2
set linebreak
set mouse=i
set nohlsearch
set noshowmode
set number
set relativenumber
set scrolloff=999
set showtabline=0
set smartcase
set smarttab
set textwidth=80

" Remappings
nnoremap <silent> <leader>w :silent w<CR>
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
nnoremap <silent> <leader>? :ALEDetail<CR>
nnoremap <silent> <leader>. @:
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>q <C-w>c
nnoremap <leader>` :PlugInstall<CR>
nnoremap <leader>c "*y
nnoremap <leader>v "*p
nnoremap <leader>t :term<CR>
nnoremap <silent> <leader>h <C-w><C-h>
nnoremap <silent> <leader>j <C-w><C-j>
nnoremap <silent> <leader>k <C-w><C-k>
nnoremap <silent> <leader>l <C-w><C-l>
nnoremap \b :ls<CR>:b
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nmap <silent> <C-[> <Plug>(ale_previous_wrap)
nmap <silent> <C-]> <Plug>(ale_next_wrap)
nnoremap <C-p> :Files<CR>
if has('nvim')
	tnoremap <Esc> <C-\><C-n> tnoremap <C-v><Esc> <Esc>
endif
nnoremap E $
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
nnoremap <M--> <C-w>-
nnoremap <M-=> <C-w>+
nnoremap <M-o> <C-w>o
nnoremap <M-\> <C-w>=
nnoremap <space> za
nnoremap <space> zf
nnoremap = gg=G''
nnoremap <silent> \- :Goyo<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>ef :e ~/.config/fish/config.fish<CR>
nnoremap <leader>en :e ~/Documents/notes.md<CR>
nnoremap <leader>ec :e ~/.editorconfig<CR>
nnoremap <leader>ez :e ~/.config/nvim/colors/zeonica.vim<CR>
nnoremap ! :!!<CR>
nnoremap & :&&<CR>
nmap <silent> j gj
nmap <silent> k gk
nnoremap <leader>da :1,$d<CR>
nnoremap <leader>ya ggVG"*y''<CR>

" Vim Plug
call plug#begin('~/.data/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'andrewradev/splitjoin.vim'
Plug 'andymass/vim-matchup'
Plug 'ap/vim-css-color'
Plug 'godlygeek/tabular'
Plug 'dag/vim-fish'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'fisadev/vim-isort'
Plug 'itchyny/lightline.vim'
Plug 'janko/vim-test'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mattn/emmet-vim'
Plug 'mcchrish/nnn.vim'
Plug 'mhinz/neovim-remote'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
call plug#end()

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
highlight ALEErrorSign guibg=NONE guifg=red
highlight ALEWarningSign guibg=NONE guifg=yellow

" Matchup
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_matchword_enabled = 0

" NNN
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

" Limelight
let g:limelight_conceal_guifg = 'gray'

" iSort
let g:vim_isort_python_version = 'python3'

" NerdTree
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = 1

" Ack/Ag
let g:ackprg = 'ag --vimgrep --smart-case'
command! -bang -nargs=* Ag
			\ call fzf#vim#grep(
			\   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
			\   fzf#vim#with_preview(), <bang>0)
" command! -bang -nargs=* Ag \ call fzf#vim#ag(<q-args>, \ <bang>0 ? fzf#vim#with_preview('up:60%') \ : fzf#vim#with_preview('right:50%:hidden', '?'), \ <bang>0)

" FZF
let g:fzf_preview_window = 'right:50%'

" EditorConfig
" let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig/'


" Lightline
let g:lightline = {'colorscheme': 'wombat'}
let g:lightline.active = {'left': [['mode', 'paste'], ['gitbranch', 'filename', 'modified']], 'right': [['filetype', 'indent'], ['relativepath'], ['percent']]}
"let g:lightline.component = {'lineinfo': ' %3l:%-2v'}
let g:lightline.component_function = {'gitbranch': 'LightlineFugitive', 'indent': 'Indentation'}
" let g:lightline.component_function = {'indent': 'Indentation'}
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

" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
