_notas:

    call _setvideo

    mov bl, 0h
    call _setbackg

    mov si,textnote1
    mov bl,15
    call _print_string

    .colorpoint:

    push bx
    mov al,bl
    mov cx, 620
    mov dx, 0
    call _img4x4
    pop bx

    .getnote:

        call _getc

        cmp al,27
        je .exit

        cmp al,43
        je .cmore

        cmp al,45
        je .cless

        cmp al,8h
        je .apgchar

        cmp al,13
        je .nextline

        call _putc
        jmp .getnote
        

    .exit:
        call _mount

    .cmore:

        cmp bl,15
        je .setcolor1

        inc bl
        jmp .colorpoint


    .cless:

        cmp bl,1
        je .setcolor2

        dec bl
        jmp .colorpoint

    .setcolor1:
        mov bl,1
        jmp .colorpoint

    .setcolor2:
        mov bl,15
        jmp .colorpoint

    .apgchar:
        mov ah,0eh
        mov bh,0h
        mov al,8
        int 10h

        mov ah,0eh
        mov bh,0h
        mov al,' '
        int 10h

        mov ah,0eh
        mov bh,0h
        mov al,8
        int 10h

        jmp .getnote

    .nextline:

        mov al,10
        call _putc

        mov al,13
        call _putc

        jmp .getnote


