set number
set updatetime=100
set shiftwidth=4
set clipboard^=unnamed,unnamedplus
set timeoutlen=500

" sources for windows
" source $HOME/AppData/Local/nvim/plugs/plugs.vim
" source $HOME/AppData/Local/nvim/modules/coc.vim 
" source $HOME/AppData/Local/nvim/modules/vim-which-key.vim 
" source $HOME/AppData/Local/nvim/modules/airline.vim  
" source $HOME/AppData/Local/nvim/modules/onedark.vim 
" source $HOME/AppData/Local/nvim/modules/fugitive.vim 
" source $HOME/AppData/Local/nvim/modules/git-gutter.vim 
" source $HOME/AppData/Local/nvim/modules/startify.vim 

" sources for linux
source $HOME/.config/nvim/plugs/plugs.vim
source $HOME/.config/nvim/modules/coc.vim
source $HOME/.config/nvim/modules/vim-which-key.vim
source $HOME/.config/nvim/modules/airline.vim 
source $HOME/.config/nvim/modules/onedark.vim 
source $HOME/.config/nvim/modules/fugitive.vim 
source $HOME/.config/nvim/modules/git-gutter.vim 
source $HOME/.config/nvim/modules/startify.vim 

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
