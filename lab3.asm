.model small ;
.dosseg
.stack 100h 
.data
msg1 db 10,13,"Enter a character: ","$"

.code

start: 
	mov ax,@data
	mov ds,ax
	
	mov ah,9h 
	mov dx,offset msg1
	int 21h
	
	mov ah,01h ; read character (Function 01h)
	int 21h
	
	mov ah,06h ;display backspace (Func 06h)
	mov dl,08h ;move 08h(backspace) to DL
	;mov ah,05h ; write 'A' to default printer (Func 05h)
	;mov dl,41h ;move  08h (char 'A' )to DL
	int 21h
	
	mov ax,4c00h ;Exit (Function 4ch)
	int 21h;
	
end start 