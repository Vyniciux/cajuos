org 0x7e00
jmp 0x0000:start

%include "data.asm"
%include "video.asm"
%include "functions.asm"
%include "workspace.asm"

%include "gallery.asm"

data:
	
	;Dados do projeto...

start:

    ;Código do projeto...
    
    call _mount

    call _getc
    
    




jmp $