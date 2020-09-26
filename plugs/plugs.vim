" vim-plug settings
call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/goerz/jupytext.vim.git'
Plug 'https://github.com/tomasr/molokai.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'joshdick/onedark.vim', {'as': 'onedark'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'https://github.com/ap/vim-css-color'
call plug#end()
