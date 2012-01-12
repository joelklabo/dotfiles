syntax on
set number
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set showcmd
set ruler
set autoindent
set nocompatible
set t_Co=256
set nofoldenable
set cursorline
set hlsearch
hi Search guibg=Khaki guifg=Black gui=NONE

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" map <esc> to jj
ino jj <esc>

" map <ctrl> + hjkl to switching between split windows
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" change path to wherever current file is
autocmd BufEnter * lcd %:p:h

" automatically make files with bin executable
au bufwritepost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile> | endif | endif

colorscheme ir_black 
