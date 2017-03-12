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

a dword 5000h
b dword 8000h
d dword ? 
finalVal dword ? 

.code
main PROC
	mov eax,b
	sub eax,a
	mov d,eax 
	call DumpRegs
	call ReadInt 
	exit
main ENDP
END main