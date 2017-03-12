
.MODEL	small
.stack	100h

.data 
	
	msg1 	db	'Hello, World!',13,10,'$'
	msg2 	db 'The string must end with a', '$'
	input 	db 'Input : ','$'

.code
start:
	mov		ax,@data		; Get the address of the data segment
	mov		ds,ax			; Set the DS segment
     
	mov 	dx,offset msg1
	mov 	ah,9 
	int 	21h
	
	mov dx,offset input
	mov ah,9
	int 21h
	
	
	mov ah,01h
	int 21h
	
	
	
	
	mov 	ax,4C00h
	int 	21h
	
	
;	mov ax,1000h
;	call Dump
	
end start