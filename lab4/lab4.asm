.model small ;
.dosseg
; รับ ตัวอักขระ แเล้ว Encryption
.stack 100h
XORVAL = 239 
.data
msg1 db 10,13,"Enter a character","$"
inp db 10 dup(?)
.code

start: 
	
	mov bx,0
L1:	mov ah,1 	; direct console input 
	mov dl,0FFh ; don't wait for character 
	int 21h 	; AL =character 
	
	
	mov inp[bx],al 
	inc bx 
	cmp al,30h 
	
	je L2		;quit if ZE = 1 (EOF) end of File 
	xor al,XORVAL
	mov ah,6	; write to output
	
	mov dl,al
	int 21h
	
	jmp L1		;repeat the loop 
	
L2	mov ax,4c00h ;Exit (Function 4ch)
	int 21h
	end start 
	
	
;	mov ax,@data
;	mov ds,ax
;L1: mov ah,6
;	mov dl,0FFh
;	int 21h
;	
;	jz L2
;	xor al,XORVAL
;	mov ah,6
;	mov dl,al
;	int 21h
;	jmp L1
;L2: end
	
