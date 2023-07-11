_mount:   ;Tô criando essa função pra ser o montador da área de trabalho

    call _setvideo

    mov bl, [bckcolor]
    call _setbackg

    call _apps

    call _callapp

    ret



        


