function! FilesEdit(args) abort
	exe 'e ' .. a:args
endfunction

function! FilesVEdit(args) abort
	exe 'vs ' .. a:args
endfunction

function! FilesSEdit(args) abort
	exe 'sp ' .. a:args
endfunction

function! FilesTEdit(args) abort
	exe 'tabe ' .. a:args
endfunction

command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker E call FilesEdit(<q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker V call FilesVEdit(<q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker S call FilesSEdit(<q-args>)
command! -nargs=1 -bar -complete=customlist,cherryfuzzy#FilesPicker T call FilesTEdit(<q-args>)
