function AutoComment()
    let extension = expand('%:e')
    let comment = '#'
    let double_forward_slash = ["js", "jsx", "ts", "tsx", "cpp", "c", "dart"]
    let hash_comment = ['py']
    let double_quotes = ['vim']
    if (index(hash_comment, extension) >= 0)
	let comment = '#'
    elseif (index(double_quotes, extension) >= 0)
	let comment = '"'
    elseif (index(double_forward_slash, extension) >= 0)
	let comment = '//'
    endif

    if(getline(".")[:len(comment) - 1] != comment)
	execute ':s/^/' . comment . ' /' 
    else
	execute ':s/^' . comment . '\( \)//' 
    endif

    :noh
endfunction

vnoremap <silent><C-_> :call AutoComment()<CR>  
nnoremap <silent><C-_> :call AutoComment()<CR>
