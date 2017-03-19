TITLE      (.asm)

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

; (insert symbol definitions here)

.data

txt byte "Input number: ",0

.code
main PROC
	mov eax,0
	mov edx,offset txt
	call WriteString
	call ReadInt
	cmp al,9 
	jg 	IF_
	jmp ELSE_
	
IF_:
	add al,7
	call WriteInt
	jmp END_F
ELSE_:
	sub al,8
	call WriteInt
	jmp END_F
	
END_F:	
	call Crlf	
	call WaitMsg
	exit
main ENDP
END main