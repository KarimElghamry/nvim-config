" ---------------------- "
"  themes settings

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

" hi Normal guibg=NONE ctermbg=NONE
