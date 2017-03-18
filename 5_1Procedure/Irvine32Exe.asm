TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib



.data
	aName byte "Abraham Lincoln",0
	nameSize = ($ - aName) - 1 
	
.code
main PROC
	mov ecx,nameSize
	mov esi,0
	
L1:	movzx eax,aName[esi]
	push eax
	inc esi
	Loop L1
	
;Pop the name from the stack,in reverse , and store in the aName array 
	mov ecx,nameSize 
	mov esi,0
L2:	pop eax
	mov aName[esi],al
	inc esi
	Loop L2
;Display the name 
	mov edx,offset aName
	call WriteString
	call Crlf
	call WaitMsg
	exit
main ENDP
END main