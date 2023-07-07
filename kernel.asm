org 0x7e00
jmp 0x0000:start

%include "video.asm"
%include "functions.asm"
%include "workspace.asm"
%include "data.asm"

data:
	
	;Dados do projeto...

start:

    call _mount

    call _getc
    
    ;Código do projeto...



   

jmp $