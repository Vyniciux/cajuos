_mount:   ;Tô criando essa função pra ser o montador da área de trabalho

    call _setvideo

    mov bl, [bckcolor]
    call _setbackg

    call _apps

    call _callapp

    ret

_apps:
    mov cx, 540
    mov dx, 20
    mov si, relogio
    call _img16x16

    mov cx, 20
    mov dx, 280
    mov si, icon_gal
    call _img16x16

    mov cx, 120
    mov dx, 280
    mov si, iconnotes
    call _img16x16

    mov cx, 220
    mov dx, 280
    mov si, iconconfig
    call _img16x16

    ret





        


