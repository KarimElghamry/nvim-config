let g:comment_dict = {'//': ["js", "jsx", "ts", "tsx", "cpp", "c", "dart"],
		\"#": ['py'],
		\'"': ['vim'],
		\}

let g:default_comment = '#'

function! s:AutoComment()
    let extension = expand('%:e')
    let comment = g:default_comment 
    for item in items(g:comment_dict) 
	if index(item[1], extension) >= 0
	    let comment = item[0]
	    break
	endif
    endfor


    if(getline(".")[:len(comment) - 1] != comment)
	execute ':s/^/' . escape(comment, '^$.*?/\[]') . ' /' 
    else
	execute ':s/^' . escape(comment, '^$.*?/\[]') . '\( \)//' 
    endif

    :noh
endfunction

command! -range AutoComment <line1>,<line2>call <sid>AutoComment() 
vnoremap <silent><C-_> :AutoComment<CR>  
nnoremap <silent><C-_> :AutoComment<CR>
