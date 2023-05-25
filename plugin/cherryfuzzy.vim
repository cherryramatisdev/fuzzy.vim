function! Edit(operator, args) abort
	exe a:operator .. ' ' .. a:args
endfunction

command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Edit call Edit('e', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Vedit call Edit('vs', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Sedit call Edit('sp', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Tedit call Edit('tabnew', <q-args>)

fun! s:decideWhichAbbrevTouse(identifier, cmd) abort
  if getcmdtype() ==# ':' && getcmdline() ==# a:identifier
    return a:cmd
  endif

  return a:identifier
endfun

cabbrev <expr> find <SID>decideWhichAbbrevTouse('find', 'Edit')
cabbrev <expr> fin <SID>decideWhichAbbrevTouse('fin', 'Edit')
cabbrev <expr> sfind <SID>decideWhichAbbrevTouse('sfind', 'Sedit')
cabbrev <expr> sfin <SID>decideWhichAbbrevTouse('sfin', 'Sedit')
cabbrev <expr> sf <SID>decideWhichAbbrevTouse('sf', 'Sedit')
cabbrev <expr> vfind <SID>decideWhichAbbrevTouse('vfind', 'Vedit')
cabbrev <expr> vfin <SID>decideWhichAbbrevTouse('vfin', 'Vedit')
cabbrev <expr> vf <SID>decideWhichAbbrevTouse('vf', 'Vedit')
cabbrev <expr> tfind <SID>decideWhichAbbrevTouse('tfind', 'Tedit')
cabbrev <expr> tfin <SID>decideWhichAbbrevTouse('tfin', 'Tedit')
cabbrev <expr> tf <SID>decideWhichAbbrevTouse('tf', 'Tedit')
