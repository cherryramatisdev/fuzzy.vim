function! Edit(operator, args) abort
	exe a:operator .. ' ' .. a:args
endfunction

command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Edit call Edit('e', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker VEdit call Edit('vs', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker SEdit call Edit('sp', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker TEdit call Edit('tabnew', <q-args>)

fun! s:decideWhichAbbrevTouse(identifier, cmd) abort
  if getcmdtype() ==# ':' && getcmdline() ==# a:identifier
    return a:cmd
  endif

  return a:identifier
endfun

cabbrev <expr> find <SID>decideWhichAbbrevTouse('find', 'Edit')
cabbrev <expr> fin <SID>decideWhichAbbrevTouse('fin', 'Edit')
cabbrev <expr> sfind <SID>decideWhichAbbrevTouse('sfind', 'SEdit')
cabbrev <expr> sfin <SID>decideWhichAbbrevTouse('sfin', 'SEdit')
cabbrev <expr> sf <SID>decideWhichAbbrevTouse('sf', 'SEdit')
cabbrev <expr> vfind <SID>decideWhichAbbrevTouse('vfind', 'VEdit')
cabbrev <expr> vfin <SID>decideWhichAbbrevTouse('vfin', 'VEdit')
cabbrev <expr> vf <SID>decideWhichAbbrevTouse('vf', 'VEdit')
cabbrev <expr> tfind <SID>decideWhichAbbrevTouse('tfind', 'TEdit')
cabbrev <expr> tfin <SID>decideWhichAbbrevTouse('tfin', 'TEdit')
cabbrev <expr> tf <SID>decideWhichAbbrevTouse('tf', 'TEdit')
