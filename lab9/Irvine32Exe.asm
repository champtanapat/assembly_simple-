TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

; (insert symbol definitions here)

.data

arrayB byte 10h,20h,30h 
arrayW word 1000h,2000h,3000h

.code
main PROC
	mov eax,0
	mov esi,offset arrayB 
	mov al,[esi] 
	call WriteHex
	inc esi 
	
	call Crlf
	mov al,[esi] 
	call WriteHex
	inc esi
	call Crlf
	
	mov al,[esi] 
	call WriteHex
	inc esi
	call Crlf
	
	mov esi ,offset arrayW 
	mov ax,[esi] 		;ax = 1000h
	call WriteHex
	call Crlf
	call DumpRegs
	mov ax,[esi+2] 	;ax = 2000h	
	call DumpRegs
	call WriteHex
	call Crlf
	
	
	call ReadInt

	exit
main ENDP
END main