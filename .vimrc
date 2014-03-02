execute pathogen#infect()
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
set background=dark
colorscheme solarized
set number
set nofoldenable

let mapleader=","

au FileType haskell nnoremap <buffer> <leader>t :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <leader>c :HdevtoolsClear<CR>

let g:neocomplcache_enable_at_startup = 1

function! FindCabalSandboxRoot()
    return finddir('.cabal-sandbox', './;')
endfunction

function! FindCabalSandboxRootPackageConf()
    return glob(FindCabalSandboxRoot().'/*-packages.conf.d')
endfunction

let g:hdevtools_options = '-g-ilib -g-isrc -g-i. -g-idist/build/autogen -g-Wall -g-package-conf='.FindCabalSandboxRootPackageConf()

