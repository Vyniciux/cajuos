_game:

        call _setvideo
        mov bl, 11
        call _setbackg
        call _cartas.cartasbaixo
        call _cartas

_carta0:
        mov cx, 70
        mov dx, 120
        mov si, card
        call _img16x16
        ret

_carta1:
        mov cx, 170
        mov dx, 120
        mov si, card1
        call _img16x16
        ret

_carta2:
        mov cx, 270
        mov dx, 120
        mov si, card2
        call _img16x16
        ret

_carta3:
        mov cx, 370
        mov dx, 120
        mov si, card3
        call _img16x16
        ret

_carta4:
        mov cx, 470
        mov dx, 120
        mov si, card4
        call _img16x16
        ret

_carta5:
        mov cx, 70
        mov dx, 220
        mov si, card5
        call _img16x16
        ret

_carta6:
        mov cx, 170
        mov dx, 220
        mov si, card6
        call _img16x16
        ret

_carta7:
        mov cx, 270
        mov dx, 220
        mov si, card7
        call _img16x16
        ret

_carta8:
        mov cx, 370
        mov dx, 220
        mov si, card8
        call _img16x16
        ret

_carta9:
        mov cx, 470
        mov dx, 220
        mov si, card9
        call _img16x16
        ret
    
_cartas:

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

    cmp al, 27
    je _mount

    jmp _cartas

    .cartasbaixo:
        call _carta0
        call _carta1
        call _carta2
        call _carta3
        call _carta4
        call _carta5
        call _carta6
        call _carta7
        call _carta8
        call _carta9
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    .carta0V:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        jmp _escolheu0

    .carta1V:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        jmp _escolheu1

    .carta2V:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        jmp _escolheu2

    .carta3V:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        jmp _escolheu3

    .carta4V:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        jmp _escolheu4

    .carta5V:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        jmp _escolheu5

    .carta6V:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        jmp _escolheu6

    .carta7V:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        jmp _escolheu7

    .carta8V:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        jmp _escolheu8

    .carta9V:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        jmp _escolheu9

    jmp _cartas

_escolheu0:

    call _getc

    cmp al, 48
    je _cartas

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

    cmp al, 27
    je _mount

    jmp _escolheu0

    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta0
        call _carta1
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta0
        call _carta3
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta0
        call _carta4
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta0
        call _carta5
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta0
        call _carta6
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta0
        call _carta7
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta0
        call _carta8
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta0
        call _carta9
        jmp _cartas

_escolheu1:

    call _getc

    cmp al, 48
    je .carta0P

    cmp al, 49
    je _cartas

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

    cmp al, 27
    je _mount

    jmp _escolheu1

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta1
        call _carta0
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta1
        call _carta2
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta1
        call _carta3
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta1
        call _carta4
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta1
        call _carta5
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta1
        call _carta7
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta1
        call _carta8
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta1
        call _carta9
        jmp _cartas

_escolheu2:

    call _getc

    cmp al, 48
    je .carta0P

    cmp al, 49
    je .carta1P

    cmp al, 50
    je _cartas

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

    cmp al, 27
    je _mount

    jmp _escolheu2

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta2
        call _carta1
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta2
        call _carta3
        jmp _cartas    

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta2
        call _carta4
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta2
        call _carta5
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta2
        call _carta6
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta2
        call _carta7
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta2
        call _carta8
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta2
        call _carta9
        jmp _cartas

_escolheu3:

    call _getc

    cmp al, 48
    je .carta0P

    cmp al, 49
    je .carta1P

    cmp al, 50
    je .carta2P

    cmp al, 51
    je _cartas

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

    cmp al, 27
    je _mount

    jmp _escolheu3

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta3
        call _carta0
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta3
        call _carta1
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta3
        call _carta2
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta3
        call _carta4
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta3
        call _carta6
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta3
        call _carta7
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta3
        call _carta8
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta3
        call _carta9
        jmp _cartas

_escolheu4:

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
    je _cartas

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

    cmp al, 27
    je _mount

    jmp _escolheu4

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta4
        call _carta0
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta4
        call _carta1
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta4
        call _carta2
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta4
        call _carta3
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta4
        call _carta5
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta4
        call _carta6
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta4
        call _carta7
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta4
        call _carta9
        jmp _cartas

_escolheu5:

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
    je _cartas

    cmp al, 54
    je .carta6P

    cmp al, 55
    je .carta7P

    cmp al, 56
    je .carta8P

    cmp al, 57
    je .carta9P

    cmp al, 27
    je _mount

    jmp _escolheu5

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta5
        call _carta0
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta5
        call _carta1
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta5
        call _carta2
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta5
        call _carta4
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta5
        call _carta6
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta5
        call _carta7
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta5
        call _carta8
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta5
        call _carta9
        jmp _cartas

_escolheu6:

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
    je _cartas

    cmp al, 55
    je .carta7P

    cmp al, 56
    je .carta8P

    cmp al, 57
    je .carta9P

    cmp al, 27
    je _mount

    jmp _escolheu6

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta6
        call _carta0
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta6
        call _carta2
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta6
        call _carta3
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta6
        call _carta4
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta6
        call _carta5
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta6
        call _carta7
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta6
        call _carta8
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta6
        call _carta9
        jmp _cartas

_escolheu7:

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
    je _cartas

    cmp al, 56
    je .carta8P

    cmp al, 57
    je .carta9P

    cmp al, 27
    je _mount

    jmp _escolheu7

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta7
        call _carta0
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta7
        call _carta1
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta7
        call _carta2
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta7
        call _carta3
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta7
        call _carta4
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta7
        call _carta5
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta7
        call _carta6
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta7
        call _carta8
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        jmp _cartas

_escolheu8:

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
    je _cartas

    cmp al, 57
    je .carta9P

    cmp al, 27
    je _mount

    jmp _escolheu8

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta8
        call _carta0
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta8
        call _carta1
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta8
        call _carta2
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta8
        call _carta3
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta8
        call _carta5
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta8
        call _carta6
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta8
        call _carta7
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        call _img16x16
        call _loop10
        call _carta8
        call _carta9
        jmp _cartas

_escolheu9:

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
    je _cartas

    cmp al, 27
    je _mount

    jmp _escolheu9

    .carta0P:
        mov cx, 70
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta9
        call _carta0
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        call _img16x16
        call _loop10
        call _carta9
        call _carta1
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        call _img16x16
        call _loop10
        call _carta9
        call _carta2
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        call _img16x16
        call _loop10
        call _carta9
        call _carta3
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        call _img16x16
        call _loop10
        call _carta9
        call _carta4
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        call _img16x16
        call _loop10
        call _carta9
        call _carta5
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        call _img16x16
        call _loop10
        call _carta9
        call _carta6
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        call _img16x16
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        call _img16x16
        call _loop10
        call _carta9
        call _carta8
        jmp _cartas

_loop10:

    mov cx, 0fh
    mov dx, 4240h
    mov ah, 86h
    int 15h
ret
