"   ______       __           ___
"  / __/ /____ _/ /___ _____ / (_)__  ___
" _\ \/ __/ _ `/ __/ // (_-</ / / _ \/ -_)
"/___/\__/\_,_/\__/\_,_/___/_/_/_//_/\__/
"
" :h mode() to see all modes
let g:currentmode={
    \ 'n'      : 'N ',
    \ 'no'     : 'N·Operator Pending ',
    \ 'v'      : 'V ',
    \ 'V'      : 'V·Line ',
    \ '\<C-V>' : 'V·Block ',
    \ 's'      : 'Select ',
    \ 'S'      : 'S·Line ',
    \ '\<C-S>' : 'S·Block ',
    \ 'i'      : 'I ',
    \ 'R'      : 'R ',
    \ 'Rv'     : 'V·Replace ',
    \ 'c'      : 'Command ',
    \ 'cv'     : 'Vim Ex ',
    \ 'ce'     : 'Ex ',
    \ 'r'      : 'Prompt ',
    \ 'rm'     : 'More ',
    \ 'r?'     : 'Confirm ',
    \ '!'      : 'Shell ',
    \ 't'      : 'Terminal '
    \}

" Automatically change the statusline color depending on mode
function! ChangeStatuslineColor()
  if (mode() =~# '\v(n|no)')
    exe 'hi! StatusLine ctermfg=008'
  elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
    exe 'hi! StatusLine ctermfg=005'
  elseif (mode() ==# 'i')
    exe 'hi! StatusLine ctermfg=004'
  else
    exe 'hi! StatusLine ctermfg=006'
  endif
  return ''
endfunction
" Find out current buffer's size and output it.
function! FileSize()
  let bytes = getfsize(expand('%:p'))
  if (bytes >= 1024)
    let kbytes = bytes / 1024
  endif
  if (exists('kbytes') && kbytes >= 1000)
    let mbytes = kbytes / 1000
  endif
  if bytes <= 0
    return '0'
  endif
  if (exists('mbytes'))
    return mbytes . 'MB '
  elseif (exists('kbytes'))
    return kbytes . 'KB '
  else
    return bytes . 'B '
  endif
endfunction
function! ReadOnly()
  if &readonly || !&modifiable
    return ''
  else
    return ''
endfunction
function! GitInfo()
  let git = fugitive#head()
  if git != ''
    return ' '.fugitive#head()
  else
    return ''
endfunction

" GIT STATUS -> VIM-SIGNIFY
" <<<
function! s:sy_stats_wrapper()
  let [added, modified, removed] = sy#repo#get_stats()
  let symbols = ['+', '-', '~']
  let stats = [added, removed, modified]  " reorder
  let statline = ''

  for i in range(3)
	if stats[i] > 0
	  let statline .= printf('%s%s ', symbols[i], stats[i])
	endif
  endfor

  if !empty(statline)
	let statline = printf('[%s]', statline[:-2])
  endif

  return statline
endfunction

function! Git_Status()
  return s:sy_stats_wrapper()
endfunction
" >>>

" ALE_WARNING
" <<<
function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))

	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors

	 return l:counts.total == 0 ? 'OK' : printf(
			\   '%dw %de',
			\   all_non_errors,
			\   all_errors
			\)
endfunction
" >>>

" set statusline=
" set statusline+=\[%n] 	    " gives buffer number
" set statusline+=\ %0.35t	" F for full path, t for tail only
" set statusline+=\ %{fugitive#statusline()}
" set statusline+=\ %{Git_Status()}
" set statusline+=\ %W		" preview window
" set statusline+=\%m	" if file modified
" set statusline+=\ %r	" readonly flag

" set statusline+=%=		    " right side
" set statusline+=\ %y	" display filetype
" " set statusline+=\ %3l/%L  " column:line:totalnumberoflines
" set statusline+=\ %2l/%L
" set statusline+=\:
" set statusline+=\%c%V
" set statusline+=\ %2p%% 	    " set line %
" " set statusline+=\ %3c
" set statusline+=\ [%b][0x%B] " value of character under cursor
" set statusline+=\ %{LinterStatus()}


set laststatus=2
set statusline=
set statusline+=%{ChangeStatuslineColor()}               " Changing the statusline color
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%8*\ [%n]                                " buffernr

" REMOVED SYNTASTIC
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" set statusline=
" set statusline+=%#org#CD=%#wht#%{getcwd()}
" set statusline+=%#ylw#SESSION=%#wht#%{GetFileName(v:this_session)}


" function! s:statusline_expr()
" 	let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
" 	let ro = "%{&readonly ? '[RO] ' : ''}"
" 	let ft = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
" 	let sep = ' %= '
" 	let pos = ' %-12(%l/%L : %c%V%) '
" 	let pct = ' %P '
" 	let gis = ' %Git_Status()'

" 	return '[%n] %f %<'.gis.mod.ro.ft.sep.pos.'%*'.pct
" endfunction

" let &statusline = s:statusline_expr()
