_calculator:
    
 
    call _setvideo
    
    mov bl, 7
    call _setbackg
    
    .loop:


        call _printfrase
        call _quebradelinha

        ;---------lendo N1--------:
        call _getc

        cmp al, 27
        je .bye

        cmp al, 48
        jl .caractererrado

        cmp al, 58
        jg .caractererrado2

        call _print
        sub al, 48
        mov dl, al 

        mov al, ' '
        call _print
        
        ;---------lendo op---------:
        call _getc
        cmp al, 27
        je .bye

        cmp al, 44
        je .opnexiste

        cmp al, 46
        je .opnexiste

        cmp al, 41
        jl .opnexiste

        cmp al, 48
        jg .opnexiste

        call _print
        mov cl, al

        
        mov al, ' '
        call _print

        ;---------lendo N2-----------:
        call _getc
        cmp al, 27
        je .bye

        cmp al, 48
        jl .caractererrado

        cmp al, 58
        jg .caractererrado2

        call _print
        sub al, 48
        mov ch, al
        

        ;---vendo qual a operação (op)-----:
        cmp cl, 42
        je .mult

        cmp cl, 43
        je .soma

        cmp cl, 45
        je .subt

        cmp cl, 47
        je .divs


        .bye:
            jmp _mount


        .caractererrado:

            call _setvideo
    
            mov bl, 7
            call _setbackg

            mov al, 'D'
            call _printc
            mov al, 'i'
            call _printc 
            mov al, 'g'
            call _printc
            mov al, 'i'
            call _printc
            mov al, 't'
            call _printc
            mov al, 'e'
            call _printc 
            mov al, ' '
            call _printc
            mov al, 'u'
            call _printc
            mov al, 'm'
            call _printc
            mov al, ' '
            call _printc 
            mov al, 'n'
            call _printc
            mov al, 'u'
            call _printc
            mov al, 'm'
            call _printc
            mov al, 'e'
            call _printc 
            mov al, 'r'
            call _printc
            mov al, 'o'
            call _printc
            mov al, ' '
            call _printc
            mov al, 'd'
            call _printc 
            mov al, 'e'
            call _printc
            mov al, ' '
            call _printc
            mov al, '0'
            call _printc
            mov al, ' '
            call _printc 
            mov al, 'a'
            call _printc
            mov al, ' '
            call _printc
            mov al, '9'
            call _printc

            call _quebradelinha

            jmp .loop

        .caractererrado2:
            
            call _quebradelinha

            mov al, 'D'
            call _printc
            mov al, 'i'
            call _printc 
            mov al, 'g'
            call _printc
            mov al, 'i'
            call _printc
            mov al, 't'
            call _printc
            mov al, 'e'
            call _printc 
            mov al, ' '
            call _printc
            mov al, 'u'
            call _printc
            mov al, 'm'
            call _printc
            mov al, ' '
            call _printc 
            mov al, 'n'
            call _printc
            mov al, 'u'
            call _printc
            mov al, 'm'
            call _printc
            mov al, 'e'
            call _printc 
            mov al, 'r'
            call _printc
            mov al, 'o'
            call _printc
            mov al, ' '
            call _printc
            mov al, 'd'
            call _printc 
            mov al, 'e'
            call _printc
            mov al, ' '
            call _printc
            mov al, '0'
            call _printc
            mov al, ' '
            call _printc 
            mov al, 'a'
            call _printc
            mov al, ' '
            call _printc
            mov al, '9'
            call _printc

            call _quebradelinha

            jmp .loop

        .opnexiste:
            
            call _printc

            call _quebradelinha

            mov al, 'E'
            call _printc
            mov al, 's'
            call _printc 
            mov al, 's'
            call _printc
            mov al, 'a'
            call _printc
            mov al, ' '
            call _printc
            mov al, 'o'
            call _printc 
            mov al, 'p'
            call _printc
            mov al, 'e'
            call _printc
            mov al, 'r'
            call _printc
            mov al, 'a'
            call _printc 
            mov al, 'c'
            call _printc
            mov al, 'a'
            call _printc
            mov al, 'o'
            call _printc
            mov al, ' '
            call _printc 
            mov al, 'n'
            call _printc
            mov al, 'a'
            call _printc
            mov al, 'o'
            call _printc
            mov al, ' '
            call _printc 
            mov al, 'e'
            call _printc
            mov al, 'x'
            call _printc
            mov al, 'i'
            call _printc
            mov al, 's'
            call _printc 
            mov al, 't'
            call _printc
            mov al, 'e'
            call _printc

            call _quebradelinha

            jmp .loop
    
        .mult:
            call _igual
            mov al, ch
            mul dl

            call _dezenaornot

            jmp .loop


        .soma:
            call _igual

            add dl, ch
            mov al, dl

            call _dezenaornot
            
            jmp .loop

        .subt:

            cmp dl, ch
            jl .negativo

            jnl .positivo

            .positivo:
                call _igual
                sub dl, ch
                mov al, dl

                call _dezenaornot

                jmp .loop
            
            .negativo:

                call _igual
                sub ch, dl
                mov al, '-'
                call _printres
                mov al, ch 
                call _dezenaornot

                jmp .loop

        .divs:
            call _igual

            cmp ch, 0
            je .erro

            mov al, dl
            xor ah, ah
            div ch
            
            mov dh, ah 
            add al, 48
            call _printres


            call _quebradelinha

            jmp .loop

            .erro:
                mov al, 'E'
                call _printv
                mov al, 'R'
                call _printv 
                mov al, 'R'
                call _printv
                mov al, 'O'
                call _printv

                call _quebradelinha

                jmp .loop



_printfrase:


    mov al, 'D'
    call _print
    mov al, 'i'
    call _print
    mov al, 'g'
    call _print
    mov al, 'i'
    call _print
    mov al, 't'
    call _print
    mov al, 'e'
    call _print
    mov al, ':'
    call _print
    mov al, ' '
    call _print
    mov al, 'N'
    call _print
    mov al, 'u'
    call _print
    mov al, 'm'
    call _print
    mov al, 'e'
    call _print
    mov al, 'r'
    call _print
    mov al, 'o'
    call _print
    mov al, ' '
    call _print
    mov al, 'o'
    call _print
    mov al, 'p'
    call _print
    mov al, 'e'
    call _print
    mov al, 'r'
    call _print
    mov al, 'a'
    call _print
    mov al, 'c'
    call _print
    mov al, 'a'
    call _print
    mov al, 'o'
    call _print
    mov al, ' '
    call _print
    mov al, 'N'
    call _print
    mov al, 'u'
    call _print
    mov al, 'm'
    call _print
    mov al, 'e'
    call _print
    mov al, 'r'
    call _print
    mov al, 'o'
    call _print

    
    ret


_print:
    mov ah, 0x0e
    mov bh, 0h
    mov bl, 8
    int 10h
    ret

_printres:
    mov ah, 0x0e
    mov bh, 0h
    mov bl, 6
    int 10h
    ret

_printv:
    mov ah, 0x0e
    mov bh, 0h
    mov bl, 4
    int 10h
    ret   

_printc:
    mov ah, 0x0e
    mov bh, 0h
    mov bl, 4 
    int 10h
    ret       

_quebradelinha:
    mov al, 0x0a
    mov ah, 0x0e
    int 10h
    mov al, 0x0d
    mov ah, 0x0e
    int 10h
    ret

_igual:
    mov al, ' '
    call _print

    mov al, '='
    call _print

    mov al, ' '
    call _print

    ret

_dezenaornot:

    xor ah, ah
    mov bl, 10
    div bl

    cmp al, 0
    je _unidade
    
    jne _dezena

    ret
_unidade:
        
    mov al, ah 
    add al, 48
    call _printres
    call _quebradelinha
    ret
 

_dezena:

    mov dh, ah
    add al, 48
    call _printres

   
    mov al, dh
    add al, 48
    call _printres
    call _quebradelinha
    ret
            
    
        

    