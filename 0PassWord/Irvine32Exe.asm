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

; (insert variables here)
txt1 byte "Password: ",0
txt2 byte "Password is ",0

.code
main PROC

	mov edx,offset txt1
	call WriteString
	call ReadChar 
	
	mov ebx,eax
	mov eax,'*' 
	call WriteChar
	call Crlf
	
	mov edx,offset txt2
	call WriteString
	mov eax,ebx
	call WriteChar
	mov eax,5000
	call Delay
	exit
main ENDP
END main