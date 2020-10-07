let g:inline_comment_dict = {'//': ["js", "jsx", "ts", "tsx", "cpp", "c", "dart"],
		\"#": ['py'],
		\'"': ['vim'],
		\}

let g:default_comment = '#'

" function for inline auto commenting
function! s:AutoComment()
"   get extension    
    let extension = expand('%:e')
    let comment = g:default_comment 

"   check file extension against each entry in inline comment dictionary    
    for item in items(g:inline_comment_dict) 
	if index(item[1], extension) >= 0
	    let comment = item[0]
	    break
	endif
    endfor
 
"   trim leading white spaces
    let current_line = substitute(getline("."), '^[ ]*', '' , 'g')

"   check if current line is commented or not
    if(current_line[:len(comment) - 1] != comment)
	execute ':s/^/' . escape(comment, '^$.*?/\[]') . ' /' 
    else
	execute ':s/^[ ]*' . escape(comment, '^$.*?/\[]') . '\( \)//' 
    endif

    :noh
endfunction

command! -range AutoComment <line1>,<line2>call <sid>AutoComment() 
vnoremap <silent><C-_> :AutoComment<CR>  
nnoremap <silent><C-_> :AutoComment<CR>
