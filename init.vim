set number
set updatetime=100
set shiftwidth=4

source $HOME/.config/nvim/modules/coc.vim


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
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'dart-lang/dart-vim-plugin'
Plug 'https://github.com/ap/vim-css-color'
call plug#end()

set clipboard^=unnamed,unnamedplus
set timeoutlen=500

" vim-which-key settings
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map =  {}

let g:which_key_map.f = { 'name' : 'fzf' }

nnoremap <silent> <leader>ff :Files<CR>
let g:which_key_map.f.f = 'Search all files'

nnoremap <silent> <leader>fg :GFiles<CR>
let g:which_key_map.f.g = 'Search files excluding .gitignore'

nnoremap <silent> <leader>v :e $MYVIMRC<CR>
let g:which_key_map.v = 'Open init.vim' 

" ---------------------- "
"  airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ---------------------- "
"  themes settings
colorscheme embark 
let g:airline_theme='embark'
let g:airline_powerline_fonts = 1

set termguicolors
if !has('nvim') && $TERM ==# 'screen-256color'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif


" let g:molokai_original = 1

" ---------------------- "
"  fugitive settings
let g:airline#extensions#branch#enabled = 1

" ---------------------- "
"  git gitter settings
let g:gitgutter_git_executable = 'D:\Git\bin\git.exe'

" ---------------------- "
"   startify settings
let g:startify_custom_header = [
			\ '  _________.__  .__        ____  _______   ____',
			\' /   _____/|  | |__| _____ \   \/  /\   \ /   /',
			\' \_____  \ |  | |  |/     \ \     /  \   Y   / ',
			\' /        \|  |_|  |  Y Y  \/     \   \     /  ',
			\'/_______  /|____/__|__|_|  /___/\  \   \___/   ',
			\'        \/               \/      \_/          ' ,
\ ]


" ------------------- "
" coc-explorer settings
nmap <C-n> :CocCommand explorer<CR>


" ------------------- "
" general settings
nmap <silent> <tab> :bnext<CR>
nmap <silent> <S-tab> :bprev<CR>

" ------------------- "
"  cpp config
function RunAndCompileCpp()
	let extension = expand('%:e')
	let fileName = expand('%:t:r')
	if (extension == "cpp")
		:cd %:h
		:w
		execute "!g++ -o " . fileName . " " . fileName . "." . extension . "&" . fileName . ".exe"
	endif
	return extension
endfunction

map <silent> <F8> :call RunAndCompileCpp()<CR>
