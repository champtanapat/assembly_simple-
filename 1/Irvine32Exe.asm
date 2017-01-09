TITLE  add_sub    (add_sub.asm)

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

val1 dword 1000h
val2 dword 4000h
val3 dword 2000h
finalVal dword ? 

.code
main PROC
	mov eax,val1 ;star with 1000h
	add eax,val2 ;add 4000h 
	sub eax,val3 ;subtract 2000h
	mov finalVal,eax 
	call DumpRegs
	call ReadInt
	exit
main ENDP
END main