:syntax on
:set number
:set virtualedit=all
:set hlsearch

:colorscheme darkdevel

" map <esc> to jj
ino jj <esc>

" change path to wherever current file is
autocmd BufEnter * lcd %:p:h

" automatically make files with bin executable
au bufwritepost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile> | endif | endif
