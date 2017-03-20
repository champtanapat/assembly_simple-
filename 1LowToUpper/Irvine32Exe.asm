TITLE      (.asm)
;โปรแกรม LowtoUpper
Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

; (insert symbol definitions here)

.data

txt1 byte "Enter a Lower case: ",0
txt2 byte "The Output is Upper case: ",0


.code
main PROC
	call Clrscr
	mov edx,offset txt1
	call WriteString
	call ReadChar
	call WriteChar
	call Crlf
	
	sub eax,32
	mov edx,offset txt2
	call WriteString
	call WriteChar
	call Crlf
	call WaitMsg
	exit
main ENDP
END main