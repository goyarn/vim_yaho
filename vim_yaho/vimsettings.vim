"syntax
if has("syntax")
    syntax on
endif

" Appearance settings
colorscheme monokai
set nu
set ruler
set title
set cursorline
set hlsearch
set cc=80,120
set showmatch

" behaviors
set autoread
set nocompatible
set nobackup
set nowrap
set wildmenu
set wmnu
set scrolloff=5

"" case behaviors
set ignorecase
set smartcase

" indent rule
set nocindent
set ts=4
set sts=0
set sw=4
set noexpandtab
"" indent rule for files
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType xhtml setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
" history
set viminfo='50,<1000,s1000,h

" autocmds
autocmd BufWritePre <buffer> :%s/\s\+$//e " auto deleting trailing whitespaces.

"" etc
map <C-h> :noh<CR>
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end
