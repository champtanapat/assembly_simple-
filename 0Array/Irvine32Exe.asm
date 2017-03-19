TITLE      (.asm)


Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

.data
	txt byte "CT215"
	
.code
main PROC
	mov esi,0
	mov ecx,lengthof txt

L1:	
	mov al,txt[esi]
	call WriteChar
	;inc esi
	add esi,type txt
	loop L1
	call Crlf
	call WaitMsg
	exit
main ENDP
END main