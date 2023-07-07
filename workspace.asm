_mount:   ;Tô criando essa função pra ser o montador da área de trabalho

    call _setvideo

    mov bl, 13
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



_img16x16:      

    xor bx,bx

    .loop:

        push bx

        call _printblock

        sub dx,5

        pop bx
        inc bh
        cmp bh,16
        jne .loop

        add dx,5
        sub cx,80

        sub bh,16
        inc bl

        cmp bl,16
        jne .loop

        ret

_img30x30:      

    xor bx,bx

    .loop:

        push bx

        call _printblock

        sub dx,5

        pop bx
        inc bh
        cmp bh,30
        jne .loop

        add dx,5
        sub cx,150

        sub bh,30
        inc bl

        cmp bl,30
        jne .loop

        ret


_gallery:

        call _setvideo

        mov bl, 0
        call _setbackg

        mov cx, 240
        mov dx, 150
        
        mov si,flor
        call _img30x30

        call _getc

        jmp _mount

        ret
        



        


