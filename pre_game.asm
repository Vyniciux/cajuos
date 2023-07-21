_pre_game:
        call _setvideo
        mov bl, 13
        call _setbackg

        mov cx, 280
        mov dx, 200
        mov si, icongame
        call _img16x16

        mov si,msginigame
        mov bl, 15
        call _print_string

        call _loop30
        call _game

_win_game:
        call _setvideo
        mov bl, 00
        call _setbackg

        mov cx, 250
        mov dx, 180
        mov si, wimage
        call _img30x30

        mov si,msgfinal
        mov bl, 15
        call _print_string

        call _loop50
        call _mount
        


_loop30: ;função para Delay de 1s

    mov cx, 0fh
    mov dx, 1500h
    mov ah, 86h
    int 15h
ret

_loop50: ;função para Delay de 1s

    mov cx, 0fh
    mov dx, 4000h
    mov ah, 86h
    int 15h
ret