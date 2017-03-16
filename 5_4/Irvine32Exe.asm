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

	theSum Dword ? 

.code
main PROC
	mov eax,10000h
	mov ebx,20000h
	mov eax,30000h
	call Sumof 
	mov theSum,eax
	call WaitMsg
	exit
main ENDP
END main