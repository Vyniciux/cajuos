_gallery:

        call _setvideo

        mov bl, 0
        call _setbackg

        mov cx, 240
        mov dx, 150
        
        mov si,flor
        call _img30x30

        call _getc

        jmp _mount

        ret