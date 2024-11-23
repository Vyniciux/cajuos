_info:

    call _setvideo

    mov bl,0
    call _setbackg

    mov si,infotext1
    mov bl,15
    call _print_string

    mov si,cajusf
    mov cx,240
    mov dx,75
    call _img30x30

    call _getc

    call _mount