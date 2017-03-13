.model small ;
.dosseg
.data

msg1 db 'Enter a char : ','$'
;msg2 db 10,13,'Output a char: ','$'
msg2 db 13,10,'Output a char: ','$'
.stack 100h 
.code

start: 
	mov ax,@data
	mov ds,ax
	mov ah,9h 
	mov dx,offset msg1
	int 21h 
	
	
	
	; input 
	mov ah,01h
	int 21h 
	
	; print message 
	mov ah,9h 
	mov dx,offset msg2
	int 21h
	
	;cal A to a 
	add al,32 
	mov dl,al 
	mov ah,02h
	int 21h 
	
	
	
	mov ax,4c00h
	int 21h 
	
	
end start 