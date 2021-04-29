""" PLUGINS
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'goyarn/vim-42header'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'Sirver/ultisnips'
Plug 'easymotion/vim-easymotion'
call plug#end()

for include_file in uniq(sort(globpath(&rtp, 'vim_yaho/plugins/*.vim', 0, 1)))
    execute "source " . include_file
endfor
