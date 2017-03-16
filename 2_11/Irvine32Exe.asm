TITLE   Copying a String (.asm)

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

	source byte "This is the source string ",0
	target  byte sizeof source dup(0) 
.code
main PROC
	mov esi,0
	mov ecx,sizeof source 
	
L1: 
	mov al,source[esi] 
	mov target[esi],al
	add esi,type source
	
	loop L1
	mov	edx,offset target
	
	call WriteString
	call Crlf
	call WaitMsg 
	
	exit
main ENDP
END main