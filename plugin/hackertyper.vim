"Hackertyper.vim
function Rand()
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

let s:hacker_typer_on = 0

function! HackerChar()

    if s:hacker_typer_on == 1
        return ''
    else
        let s:hacker_typer_on = 1
    endif

    let hackertyperfile = expand("%") . '.hackertyper'

    if filereadable(hackertyperfile)
        "echo "Engaded!"
    else
        let s:hacker_typer_on = 0
        return ''
    endif


    let hackertyperbuffer = readfile(hackertyperfile)


    if line(".") > len(hackertyperbuffer)
        "call StopHackerTyper()
        let s:hacker_typer_on = 0
        return
    endif


    " let tempreg = @a
    let a = strpart(hackertyperbuffer[line('.') -1],col('.') -1,Rand() % 15 + 5)
    let mychar = getchar()
    if a == ''
        if line(".") < line('$')
            let s:hacker_typer_on = 0
            return ''
        endif
        let s:hacker_typer_on = 0
        return  "\r"
    endif
    let s:hacker_typer_on = 0
    return a
    " let a = tempreg
endfun

com! WriteHackerTyperFile :w %.hackertyper
com! StartHackerTyper call hackertyper#startHackerTyper()
com! StopHackerTyper call hackertyper#stopHackerTyper()
