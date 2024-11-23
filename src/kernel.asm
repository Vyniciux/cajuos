org 0x7e00
jmp 0x0000:start

%include "src/data.asm"
%include "src/video.asm"
%include "src/functions.asm"
%include "src/workspace.asm"
%include "src/game.asm"
%include "src/notas.asm"
%include "src/gallery.asm"
%include "src/config.asm"
%include "src/calculator.asm"
%include "src/info.asm"
%include "src/pre_game.asm"

data:
	
	;Dados do projeto...

start:

    ;Código do projeto...
    
    call _mount

    call _getc

    
    




jmp $