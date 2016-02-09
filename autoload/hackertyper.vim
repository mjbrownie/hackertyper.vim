function! hackertyper#startHackerTyper()
    mapclear <buffer>
    mapclear! <buffer>
    mapclear
    mapclear!
    setlocal noautoindent
    setlocal nocindent
    setlocal nosmartindent
    setlocal indentexpr=

    let chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890[]\';/.,"
    let i = 0

    while i < len(chars)
        exe "inoremap <expr> <buffer> ". chars[i] . " HackerChar()"
        let i = i + 1
    endwhile
    exe "inoremap <expr> <buffer> <Space> HackerChar()"
endfun

function! hackertyper#stopHackerTyper()
    mapclear <buffer>
    mapclear! <buffer>
endfun
