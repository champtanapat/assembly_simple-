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

.code
main PROC
	Mov eax,10000h	;eax = 10000h 
	add eax,40000h	;eax = 50000h
	sub eax,20000h	;eax = 30000h
	call DumpRegs 	;display registers
	;call ReadInt
	mov eax,500
	call Delay 
;	int 21h


	exit
main ENDP
END main