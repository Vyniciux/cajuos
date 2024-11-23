_mount:   ;Tô criando essa função pra ser o montador da área de trabalho

    call _setvideo

    mov bl,[bckcolor]
    call _setbackg

    mov si,cajusf
    mov cx, 250
    mov dx,110
    call _img30x30

    call _apps

    call _callapp

    ret



        


