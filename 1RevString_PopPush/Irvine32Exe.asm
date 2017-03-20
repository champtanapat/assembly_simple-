TITLE    Reversing a String   (.asm)

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

; (insert symbol definitions here)

.data
aName byte "Ramkhamhaeng University",0
nameSize = ($ - aName) - 1 
.code
main PROC
	mov ecx,nameSize 
	mov esi,0
	
L1:	movzx eax,aName[esi]
	push eax
	inc esi
	Loop L1
;Pop the name from the stack 
;and store in the aName array 
	mov ecx,nameSize
	mov esi,0
	
L2: 	pop eax
	;call WriteChar	
	mov aName[esi],al 
	
	inc esi 
	Loop L2 
	
	mov edx,offset aName
	call WriteString
	call Crlf
	call WaitMsg

	exit
main ENDP
END main