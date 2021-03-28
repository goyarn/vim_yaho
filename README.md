# VIM_YAHO
제 vim 세팅을 쉽게 옮길 수 있도록 만든 저장소입니다.

아무것도 생각이 안나서 옆에서 동생이 외치던 무야호에서 폴더이름을 짓고 저장소 이름까지 지었습니다.

# 설명
`.vimrc` 에는 `~/.vim/vim_yaho` 내부 파일들을 실행하는 소스만 있게 했습니다.
그것이 `vimrc_backup` 이고, 나머지 다른 모든 부분들을 (autoload, plugged 제외)

## Plug-in manager
vim-plug 이므로 처음 이용시 vim-plug 설치 후 설정파일을 불러와 :PlugInstall 해야 함

## coc.nvim
node, yarn 설치 필요

## coc-clangd
clangd-9 (mac에서는 llvm 설치했었음.)

## ultisnips
coc-ultisnips 를 이용해 coc.nvim 과 연동함

# TODO
곧 coc extension 들도 설정파일로 정리될 수 있도록 할 예정
