"Hackertyper.vim
function! HackerChar()
    let hackertyperfile = expand("%") . '.hackertyper'

    if filereadable(hackertyperfile)
        "echo "Engaded!"
    else
        return
    endif


    let hackertyperbuffer = readfile(hackertyperfile)


    if line(".") > len(hackertyperbuffer)
        "call StopHackerTyper()
        return
    endif


    " let tempreg = @a
    let a = hackertyperbuffer[line('.') -1][col('.') -1]
    let mychar = getchar()
    if a == ''
        if line(".") < line('$')
            return ''
        endif
        return  "\r"
    endif
    return a
    " let a = tempreg
endfun

com! WriteHackerTyperFile :w %.hackertyper
com! StartHackerTyper call hackertyper#startHackerTyper()
com! StopHackerTyper call hackertyper#stopHackerTyper()
