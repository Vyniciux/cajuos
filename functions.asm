_getc:
    mov ah,00h
    int 16h
    ret

_callapp:

    call _getc

    cmp al, 49
    je _gallery

    cmp al, 50
    je _notas

    cmp al, 51
    je _configuracoes

    cmp al, 52
    je _game

    cmp al, 53
    je _calculator

    cmp al,54
    je _info


    jmp _callapp

_apps:
    mov cx, 540
    mov dx, 20
    mov si, relogio
    call _img16x16

    mov cx, 30
    mov dx, 380
    mov si, icon_gal
    call _img16x16

    mov cx, 130
    mov dx, 380
    mov si, iconnotes
    call _img16x16

    mov cx, 230
    mov dx, 380
    mov si, iconconfig
    call _img16x16

    mov cx, 330
    mov dx, 380
    mov si, icongame
    call _img16x16

    mov cx, 430
    mov dx, 380
    mov si, iconcalc
    call _img16x16

    mov cx, 530
    mov dx, 380
    mov si, iconinfo
    call _img16x16

    ret

_print_string:

    lodsb
    cmp al,0
    je .fim

    mov ah, 0eh
	int 10h

    jmp _print_string

    .fim:
        ret

_putc:

        mov ah,0eh
        mov bh,0
        int 10h

        ret



