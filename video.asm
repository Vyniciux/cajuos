_setvideo:
        mov ah, 00h
        mov al, 12h
        int 10h
    ret

_setbackg:
    mov ah, 0Bh
    mov bh, 00h
    int 10h

    ret

_printblock:

    lodsb

    mov ah, 0ch  

    mov bl,0 ;conta x
    mov di,0 ;conta y

    .loop:

        
        int 10h
        inc cx
        inc bl
        

        cmp bl,5
        jne .loop

        inc dx
        inc di

        cmp di,5
        je .fim

        sub cx, 5
        mov bl,0

        jmp .loop

    .fim:
        ret



        

    

    
    