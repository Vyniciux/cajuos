_game:
        call _setvideo
        mov bl, 11
        call _setbackg
        xor bx, bx
        mov bx, 0
        call _cartas.cartasbaixo
        call _cartas

_carta0: ;cada uma dessas 10 funções faz com que a respectiva carta fique fechada
        mov cx, 70
        mov dx, 120
        mov si, card
        push bx
        call _img16x16
        pop bx
        ret

_carta1:
        mov cx, 170
        mov dx, 120
        mov si, card1
        push bx
        call _img16x16
        pop bx
        ret

_carta2:
        mov cx, 270
        mov dx, 120
        mov si, card2
        push bx
        call _img16x16
        pop bx
        ret

_carta3:
        mov cx, 370
        mov dx, 120
        mov si, card3
        push bx
        call _img16x16
        pop bx
        ret

_carta4:
        mov cx, 470
        mov dx, 120
        mov si, card4
        push bx
        call _img16x16
        pop bx
        ret

_carta5:
        mov cx, 70
        mov dx, 220
        mov si, card5
        push bx
        call _img16x16
        pop bx
        ret

_carta6:
        mov cx, 170
        mov dx, 220
        mov si, card6
        push bx
        call _img16x16
        pop bx
        ret

_carta7:
        mov cx, 270
        mov dx, 220
        mov si, card7
        push bx
        call _img16x16
        pop bx
        ret

_carta8:
        mov cx, 370
        mov dx, 220
        mov si, card8
        push bx
        call _img16x16
        pop bx
        ret

_carta9:
        mov cx, 470
        mov dx, 220
        mov si, card9
        push bx
        call _img16x16
        pop bx
        ret

_winMsg:

    
ret
    
_cartas: ;principal função do jogo

    cmp bx, 5
    je _winMsg

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

    cmp al, 27 ;se esc for pressionado volta para área de trabalho
    je _mount

    jmp _cartas ;se nenhuma das teclas que têm utilidade no jogo foram pressionadas, ele volta para o início dessa função

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


    .carta0V: ;cada uma dessas 10 funções abre a respectiva carta e pula para a função "escolheu"
        mov cx, 70
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        pop bx
        jmp _escolheu0

    .carta1V:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        pop bx
        jmp _escolheu1

    .carta2V:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        pop bx
        jmp _escolheu2

    .carta3V:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        pop bx
        jmp _escolheu3

    .carta4V:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        pop bx
        jmp _escolheu4

    .carta5V:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        pop bx
        jmp _escolheu5

    .carta6V:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        pop bx
        jmp _escolheu6

    .carta7V:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        pop bx
        jmp _escolheu7

    .carta8V:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        pop bx
        jmp _escolheu8

    .carta9V:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        pop bx
        jmp _escolheu9

    jmp _cartas

_escolheu0: ;pega o segundo caracter da jogada, se for o par certo, as cartas ficam abertas, se não, ambas se fecham 

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
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta1
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta3
        pop bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta4
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta5
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta6
        pop bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta7
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta8
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta0
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta0
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta2
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta3
        pop bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta4
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta5
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta7
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta8
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta1
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta1
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta3
        pop bx
        jmp _cartas    

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta4
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta5
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta6
        pop bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta7
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta8
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta2
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta0
        pop bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta1
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta2
        pop bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta4
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta6
        pop bx
        inc bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta7
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta8
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta3
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta0
        pop bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta1
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta2
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta3
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta5
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta6
        pop bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta7
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta4
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta0
        pop bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta1
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta2
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta4
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta6
        pop bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta7
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta8
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta5
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta0
        pop bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta2
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta3
        pop bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta4
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta5
        pop bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta7
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta8
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta6
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta0
        pop bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta1
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta2
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta3
        pop bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta4
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta5
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta6
        pop bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta7
        call _carta8
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        pop bx
        inc bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta0
        pop bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta1
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta2
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta3
        pop bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta5
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta6
        pop bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta7
        pop bx
        jmp _cartas

    .carta9P:
        mov cx, 470
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        call _loop10
        call _carta8
        call _carta9
        pop bx
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
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta0
        pop bx
        jmp _cartas
    
    .carta1P:
        mov cx, 170
        mov dx, 120
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta1
        pop bx
        jmp _cartas

    .carta2P:
        mov cx, 270
        mov dx, 120
        mov si, relogio
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta2
        pop bx
        jmp _cartas

    .carta3P:
        mov cx, 370
        mov dx, 120
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta3
        pop bx
        jmp _cartas

    .carta4P:
        mov cx, 470
        mov dx, 120
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta4
        pop bx
        jmp _cartas

    .carta5P:
        mov cx, 70
        mov dx, 220
        mov si, img1
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta5
        pop bx
        jmp _cartas

    .carta6P:
        mov cx, 170
        mov dx, 220
        mov si, img0
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta6
        pop bx
        jmp _cartas

    .carta7P:
        mov cx, 270
        mov dx, 220
        mov si, img4
        push bx
        call _img16x16
        pop bx
        inc bx
        jmp _cartas

    .carta8P:
        mov cx, 370
        mov dx, 220
        mov si, img2
        push bx
        call _img16x16
        call _loop10
        call _carta9
        call _carta8
        pop bx
        jmp _cartas

_loop10: ;função para Delay de 1s

    mov cx, 0fh
    mov dx, 4240h
    mov ah, 86h
    int 15h
ret
