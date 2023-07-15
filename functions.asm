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



