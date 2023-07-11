_getc:
    mov ah,00h
    int 16h
    ret

_callapp:

    call _getc

    cmp al,49
    je _gallery


    jmp _callapp




