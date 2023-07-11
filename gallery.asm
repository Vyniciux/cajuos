_gallery:

        call _setvideo

        mov bl, 0
        call _setbackg

        mov si,menos
        mov cx, 80
        mov dx, 200
        call _img16x16

        mov si,mais
        mov cx, 500
        mov dx, 200
        call _img16x16

        mov si,img0

        mov ax,0
        push ax

.show: 
        mov cx, 240
        mov dx, 150
        
        call _img30x30

.wait: 

        call _getc

        cmp al,115
        je .exit

        cmp al,43
        je .prox

        cmp al,45
        je .ret

        jmp .wait

.prox:

        pop ax 

        cmp ax,7
        je .flow1

        inc ax
        push ax

        jmp .choose
        
.ret:

        pop ax 

        cmp ax,0
        je .flow2

        dec ax
        push ax
        jmp .choose

.choose:

        cmp ax,0
        je .img0

        cmp ax,1
        je .img1

        cmp ax,2
        je .img2

        cmp ax,3
        je .img3

        cmp ax,4
        je .img4

        cmp ax,5
        je .img5

        cmp ax,6
        je .img6

        cmp ax,7
        je .img7

        jmp .show


.flow1:

        mov ax,0
        push ax
        jmp .choose

.flow2:

        mov ax,7
        push ax
        jmp .choose

.exit:
        pop ax
        jmp _mount

.img0:
        mov si, img0
        jmp .show

.img1:
        mov si, img1
        jmp .show

.img2:
        mov si, img2
        jmp .show

.img3:
        mov si, img3
        jmp .show

.img4:
        mov si, img4
        jmp .show

.img5:
        mov si, img5
        jmp .show

.img6:
        mov si, img6
        jmp .show

.img7:
        mov si, img7
        jmp .show












        



