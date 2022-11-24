function! cherryfuzzy#FilesPicker(A,L,P) abort
  if trim(system('git -C . rev-parse 2>/dev/null; echo $?')) != 0
    if !executable('fd')
      echoerr 'Please install fd for non git repositories'
      return
    endif

    let l:cmd = 'fd . -t f'
  else
    let l:cmd = 'git ls-files'
  endif

  let l:items = l:cmd->systemlist()
  if a:A->len() > 0
    if exists('*haystack#filter')
      echomsg "AQUI"
      return haystack#filter(l:items, a:A)
    elseif exists('*matchfuzzy')
      return l:items->matchfuzzy(a:A)
    else
      echoerr "We can't fuzzy complete this"
    endif
  else
    return l:items
  endif
endfunction
