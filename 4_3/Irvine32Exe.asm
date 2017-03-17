TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib



.data
	V1 byte +127		;7Fh
	V2 byte -128		;80h
	V3 byte +30		;1E
	
	txt byte "=",0
.code
main PROC
	mov eax,0
	mov dl,">"
	mov txt,dl
	mov edx,offset txt
	call WriteString 
	call Crlf
	mov ax,15
	cmp ax,10 
	call DumpRegs
	
	mov dl,"<"
	mov txt,dl
	mov edx,offset  txt
	call WriteString
	call Crlf
	mov ax,2
	cmp ax,5
	call DumpRegs
	

	mov dl,"="
	mov txt,dl
	mov edx,offset txt
	call WriteString
	call Crlf
	mov ax,10
	cmp ax,10
	call DumpRegs
	call WaitMsg	
	
	
	exit
main ENDP
END main