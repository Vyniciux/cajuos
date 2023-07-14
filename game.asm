_game:

        call _setvideo
        mov bl, 11
        call _setbackg
        call _cartas.cartasbaixo
        call _cartas
    
_cartas:

    mov al, 00
    call _getc

    cmp al, 48
    je .carta0V

    cmp al, 49
    je .carta1V

    cmp al, 50
    je .carta2V

    cmp al, 51
    je .carta3V

    cmp al, 52
    je .carta4V

    cmp al, 53
    je .carta5V

    cmp al, 54
    je .carta6V

    cmp al, 55
    je .carta7V

    cmp al, 56
    je .carta8V

    cmp al, 57
    je .carta9V

    cmp al, 99
    je .cartasbaixo

    cmp al, 115
    je _mount

    .cartasbaixo:
        call .carta0
        call .carta1
        call .carta2
        call .carta3
        call .carta4
        call .carta5
        call .carta6
        call .carta7
        call .carta8
        call .carta9
        ret

    .carta0:
        mov cx, 70
        mov dx, 120
        mov si, card
        call _img16x16
        ret

    .carta1:
        mov cx, 170
        mov dx, 120
        mov si, card
        call _img16x16
        ret

    .carta2:
        mov cx, 270
        mov dx, 120
        mov si, card
        call _img16x16
        ret

    .carta3:
        mov cx, 370
        mov dx, 120
        mov si, card
        call _img16x16
        ret

    .carta4:
        mov cx, 470
        mov dx, 120
        mov si, card
        call _img16x16
        ret

    .carta5:
        mov cx, 70
        mov dx, 220
        mov si, card
        call _img16x16
        ret

    .carta6:
        mov cx, 170
        mov dx, 220
        mov si, card
        call _img16x16
        ret

    .carta7:
        mov cx, 270
        mov dx, 220
        mov si, card
        call _img16x16
        ret

    .carta8:
        mov cx, 370
        mov dx, 220
        mov si, card
        call _img16x16
        ret

    .carta9:
        mov cx, 470
        mov dx, 220
        mov si, card
        call _img16x16
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    .carta0V:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        jmp _cartas2

    .carta1V:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        jmp _cartas2

    .carta2V:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        jmp _cartas2

    .carta3V:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        jmp _cartas2

    .carta4V:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        jmp _cartas2

    .carta5V:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        jmp _cartas2

    .carta6V:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        jmp _cartas2

    .carta7V:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        jmp _cartas2

    .carta8V:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        jmp _cartas2

    .carta9V:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        jmp _cartas2

    jmp _cartas

_cartas2:

    mov al, 00
    call _getc

    cmp al, 48
    je .carta0P

    cmp al, 49
    je .carta1P

    cmp al, 50
    je .carta2P

    cmp al, 51
    je .carta3P

    cmp al, 52
    je .carta4P

    cmp al, 53
    je .carta5P

    cmp al, 54
    je .carta6P

    cmp al, 55
    je .carta7P

    cmp al, 56
    je .carta8P

    cmp al, 57
    je .carta9P

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, card
        call _img16x16
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, card
        call _img16x16
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, card
        call _img16x16
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, card
        call _img16x16
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, card
        call _img16x16
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, card
        call _img16x16
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, card
        call _img16x16
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, card
        call _img16x16
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, card
        call _img16x16
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, card
        call _img16x16
        jmp _cartas

