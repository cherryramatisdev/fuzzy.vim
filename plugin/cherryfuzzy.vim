function! Edit(operator, args) abort
	exe a:operator .. ' ' .. a:args
endfunction

command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Edit call Edit('e', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Vedit call Edit('vs', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Sedit call Edit('sp', <q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker Tedit call Edit('tabnew', <q-args>)

cabbrev find Edit
cabbrev fin Edit
cabbrev sfind Sedit
cabbrev sfin Sedit
cabbrev vfind Vedit
cabbrev vfin Vedit
cabbrev tfind Tedit
cabbrev tfin Tedit
