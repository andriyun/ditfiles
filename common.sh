## Includes common functions.

# Kills process that is occupying port.
function killpp() {
    PID=$(netstat -nltp 2>/dev/null | grep $1 | awk "{ print \$7}" | awk -F/ "{ print \$1 }");
    sudo kill -9 $PID
}

#if system('uname -r') =~ "microsoft"
#  augroup Yank
#  autocmd!
#  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
#  augroup END
#endif
