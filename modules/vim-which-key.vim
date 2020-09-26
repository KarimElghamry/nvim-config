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

