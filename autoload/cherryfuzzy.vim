function! s:mapBinaryToCommand(binary) abort
  if a:binary == "fd"
    return "fd . -t f"
  elseif a:binary == "git"
    return "git ls-files"
  else
    return v:nil
  endif
endfunction

function! s:runCmd(binary) abort
  let l:cmd = s:mapBinaryToCommand(a:binary)
  return systemlist(l:cmd)
endfunction

function! s:getFiles() abort
  if !exists('g:cherryfuzzy_binary')
    return s:runCmd(g:cherryfuzzy_binary)
  endif

  if trim(system('git -C . rev-parse 2>/dev/null; echo $?')) == 0
    return s:runCmd('git')
  endif

  if executable('fd')
    return s:runCmd('fd')
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
