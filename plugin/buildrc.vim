if !exists('*CPPCompileAndRun')
    function CPPCompileAndRun()
        !g++ % -o '%:r.o' -Wall --std=c++11 && ./'%:r.o'
    endfunction
endif

if !exists('*RunCode')
    function RunCode()
        if expand('%:e') == 'cpp'
            :call CPPCompileAndRun()
        endif
    endfunction
endif
