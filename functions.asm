_getc:
    mov ah,00h
    int 16h
    ret

_callapp:

    call _getc

    cmp al,49
    je _gallery


    jmp _callapp

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




