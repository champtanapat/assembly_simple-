TITLE   Test Flag   (.asm)

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
	Rval sdword ?
	Xval sdword 26
	Yval sdword 30
	Zval sdword 40 
.code
main PROC
	mov ax,100h
	inc ax
	call DumpRegs
	dec ax
	call DumpRegs
	
	mov eax,Xval
	call DumpRegs
	
	call WaitMsg
	exit
main ENDP
END main