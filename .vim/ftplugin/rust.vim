" Compiler
"
" Execute current file in test mode
nmap <F6> :call CompileCurrentFileTests()<cr>
nmap <F7> :call RunCurrentFileTests()<cr>

function! RunCurrentFileTests()
    let l:file = split(@%, '\.')[0]
    let s:cmd = substitute(":! ./{file}", "{file}", l:file, "g")
    execute s:cmd
endfunction

function! CompileCurrentFileTests()
    let l:file = split(@%, '\.')[0]
    let s:cmd = substitute(":! rustc --test {file}.rs", "{file}", l:file, "g")
    execute s:cmd
endfunction


