.model small ;ตัวอย่างโปรแกรม #1 วิชา cos
.dosseg
.data

msg1 db 'Test Dos Function 01h:','$'
msg2 db ' ' ,0Ah,13h,'$'
msg3 db 'Test Dos Function 07h:','$'

inbuff BYTE 20 DUP(?)
.stack 100h 
.code

start: 
	mov ax,@data
	mov ds,ax
	mov ah,09h 
	mov dx,offset msg1
	int 21h 
	
	mov ah,01h
	int 21h
	
	mov ah,09h
	mov dx,offset msg3
	int 21h
	
	mov ah,07h
	int 21h

	mov ax,4c00h
	int 21h
	
end start 