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

TAB = 9 ;ascii code for tab 

.code
main PROC
	call Randomize ; init random generator 
	call Rand1 
	call Rand2 
	call WaitMsg
	
	exit
main ENDP

Rand1 PROC 

	mov eax,0
	mov ecx,10
L1: 	call Random32 
	call WriteDec
	;call Crlf
	mov al,TAB
	call WriteChar
	;call Crlf
	Loop L1
	call Crlf
	ret 
Rand1 endp

Rand2 PROC
	mov ecx,10
L1:	mov eax,100
	call RandomRange
	sub eax,0
	call WriteInt
	mov al,TAB
	call WriteChar
	loop L1
	call Crlf
	Ret
Rand2 endp
	
END main