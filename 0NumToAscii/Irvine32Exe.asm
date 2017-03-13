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
txt1 byte "Input Number to Ascii: ",0
txt2 byte "Ascii: ",0
txt3 dword ?
.code
main PROC
	mov eax,0
	mov edx,offset txt1
	call WriteString
	call ReadChar 
	call WriteChar 

	call DumpRegs
	call Crlf
	
	
	
	mov ah,'3'
	call DumpRegs
	
	call WriteChar
	;call WriteChar
	call ReadInt
	
	exit
main ENDP
END main