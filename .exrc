version 6.0
let cfile=@% 
function Win32Compile()
    :w
    :!mkdir tmp
    :exec "!utils\make.bat ".cfile
endfunction
command Cf w | exec "!bash -x ~/make-tex.sh ".cfile
command CF w | exec "!bash -x utils/make.sh ".cfile
if has('win32')
    command! CF exec Win32Compile()
endif
command Timestamp :exec 'normal i'.substitute(strftime('%X %d.%m.%Y'),"[\n]*$","","")
command TimeStamp put=strftime('%X %d.%m.%Y')

