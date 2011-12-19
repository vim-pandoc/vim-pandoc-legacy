"===  Load Guard  {{{1 =======================================================
if !zlib#rc#script_load_guard('ftdetect_' . expand('<sfile>:t:r'), 700, 100, [])
    finish
endif
 au BufNewFile,BufRead *.markdown,*.md,*.mkd,*.pd,*.pdk,*.pandoc,*.text   setfiletype pandoc
