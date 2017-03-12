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


.code
main PROC

	mov eax,0
	mov edx,0
	call ReadChar
	call WriteChar
	
	mov edx,eax
	call DumpRegs
	
	call ReadChar
	call WriteChar
	mov ebx,eax
	call DumpRegs
	call Crlf 
	
	
	mov eax,edx
	call WriteChar
	call DumpRegs
	mov eax,ebx
	call WriteChar
	
	call DumpRegs
;	mov ebx,eax
;	call DumpRegs
;	call WriteChar
	
;	call Crlf
	call ReadInt
	
	exit
main ENDP
END main