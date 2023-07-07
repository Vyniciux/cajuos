_mount:   ;Tô criando essa função pra ser o montador da área de trabalho

    call _setvideo

    mov bl, [bckcolor]
    call _setbackg

    call _apps

    call _getc
    
    jmp _gallery

    ret

_apps:
    mov cx, 540
    mov dx, 20
    mov si, relogio
    call _img16x16

    mov cx, 20
    mov dx, 380
    mov si, insta
    call _img16x16

    ret





        


