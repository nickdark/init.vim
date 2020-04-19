syntax enable
filetype plugin indent on
let mapleader=","
set autoindent
set autochdir
set autoread
set autowrite
set backspace=indent,eol,start
set cindent
set cinkeys-=0#
set clipboard=unnamedplus
set expandtab
set gdefault
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
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" Remappings
nnoremap <silent> <leader>w :silent w<CR>
nnoremap <silent> <leader>b :NERDTreeToggle<CR>
nnoremap <silent> <leader>? :ALEDetail<CR>
nnoremap <leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>q :bd<CR>
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
nnoremap <space> za
nnoremap <space> zf
nnoremap = gg=G''
nnoremap <silent> \- :Goyo<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>ef :e ~/.config/fish/config.fish<CR>
nnoremap <leader>en :e ~/Documents/notes.md<CR>
nnoremap <leader>ec :e ~/.editorconfig<CR>
nnoremap ! :!!<CR>
nnoremap & :&&<CR>
nmap <silent> j gj
nmap <silent> k gk
nnoremap <Leader>da :1,$d<CR>
nnoremap <Leader>ya ggVG"*y''<CR>
" nnoremap <silent> <leader>f :call fzf#vim#files('',
"             \ {'source': 'ag -l -g ""', 'down': '100%'})<cr>
" nnoremap <silent> <leader>f :call fzf#vim#files('',
"       \ {'source': 'ag --hidden --ignore .git -f -g ""', 'down': '40%'})<cr>

" Vim Plug
call plug#begin('~/.data/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'andrewradev/splitjoin.vim'
Plug 'ap/vim-css-color'
Plug 'dag/vim-fish'
Plug 'mcchrish/nnn.vim'
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
Plug 'mhinz/neovim-remote'
Plug 'mileszs/ack.vim'
Plug 'radenling/vim-dispatch-neovim'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
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

" NNN
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

" Limelight
let g:limelight_conceal_ctermfg = 'gray'

" iSort
let g:vim_isort_python_version = 'python3'

" NerdTree
let g:NERDTreeWinPos = "right"

" Ack/Ag
let g:ackprg = 'ag --vimgrep --smart-case'
command! -bang -nargs=* Ag
            \ call fzf#vim#grep(
            \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
            \   fzf#vim#with_preview(), <bang>0)
" command! -bang -nargs=* Ag \ call fzf#vim#ag(<q-args>, \ <bang>0 ? fzf#vim#with_preview('up:60%') \ : fzf#vim#with_preview('right:50%:hidden', '?'), \ <bang>0)

" FZF
let g:fzf_preview_window = 'right:50%'

" Fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Lightline
"let g:lightline = {'colorscheme': 'powerlineish'}
let g:lightline = {'colorscheme': 'OldHope'}
let g:lightline.active = {'left': [['mode', 'paste'], ['gitbranch', 'filename', 'modified']], 'right': [['filetype', 'indent'], ['relativepath'], ['percent']]}
"let g:lightline.component = {'lineinfo': ' %3l:%-2v'}
let g:lightline.component_function = {'gitbranch': 'LightlineFugitive'}
let g:lightline.component_function = {'indent': 'Indentation'}
function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ''.branch : ''
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

"autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
autocmd FileType vim,py,js,c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
"autocmd Filetype nerdtree nmap <buffer> <CR> go
