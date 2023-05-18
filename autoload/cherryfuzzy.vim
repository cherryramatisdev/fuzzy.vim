function! s:getFiles() abort
  if trim(system('git -C . rev-parse 2>/dev/null; echo $?')) == 0
    return systemlist('git ls-files')
  endif

  if executable('fd')
    return systemlist('fd . -t f')
  endif

  return glob(getcwd() . '/**', 1, 1)
endfunction

function! cherryfuzzy#FilesPicker(A,L,P) abort
  let l:items = s:getFiles()

  if a:A->len() > 0
    if exists('*matchfuzzy')
      return l:items->matchfuzzy(a:A)
    else
      echoerr "We can't fuzzy complete this"
    endif
  else
    return l:items
  endif
endfunction
