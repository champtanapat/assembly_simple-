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

txt1 byte "Input number= ",0 
txt2 byte "Output= ",0

.code
main PROC
	mov edx,offset txt1
	call WriteString
	call ReadChar
	call Crlf
	
	mov edx,offset txt2
	call WriteString
	mov ecx,10

L1: 	call WriteChar
	inc al
	Loop L1
	call Crlf
	call ReadInt
	exit
main ENDP
END main