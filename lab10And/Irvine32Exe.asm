TITLE  Converting Lower to Upper Case    (.asm)

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

.data
	arrayB byte "abcdefghijklmnopqrstuvwxyz",0
.code
main PROC
	mov ecx,LENGTHOF arrayB 
	mov esi,offset arrayB
	
L1:	and byte ptr[esi],11011111b
	inc esi
	Loop L1
	
	mov edx,offset arrayB
	call WriteString 
	call Crlf 
	call WaitMsg
	
	exit
main ENDP
END main