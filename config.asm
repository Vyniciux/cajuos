_configuracoes:

    xor ax,ax
    mov [statusconfig],al
     
    .reload:

    call _setvideo

    mov bl,0
    call _setbackg

    mov bl,15
    mov si, textconfig1
    call _print_string

    .statusconfig:

        mov al,[statusconfig]

        cmp al,0
        je .status0

        cmp al,1
        je .status1

        jmp .status0

    .changes1:  

        mov al,[statusconfig]
        inc al
        mov [statusconfig],al
        jmp .reload

    .changes2:  

        mov al,[statusconfig]
        dec al
        mov [statusconfig],al
        jmp .reload
    

    .status0:

        mov bl,4
        mov si,textconfig2
        call _print_string

        call _getc

        cmp al,43
        je .changes1

        cmp al,27
        je .fim

        jmp .status0

    .status1:

        mov cx,17
        mov dx,53
        mov al,15
        call _printblock0

        mov cx,240
        mov dx,45
        mov al,[bckcolor]
        call _img4x4

        mov bl,4
        mov si,textconfig3
        call _print_string

        call _getc

        cmp al,45
        je .changes2

        cmp al,99
        je .changeback

        cmp al,27
        je .fim
        
        jmp .status1


    .changeback:

        mov al,[bckcolor]
        cmp al,15
        je .cb

        inc al
        mov [bckcolor],al

        jmp .reload

    .cb:

        mov al,0
        mov [bckcolor],al
        jmp .reload



    .fim:
        call _mount


