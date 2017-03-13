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

e dword 50
m dword 20
n dword 75
;50-(20+75)
;x = - e + (m + n) 

.code
main PROC
	
	mov ebx,m	;ebx = 20 
	add ebx,n	;ebx = 20+75
	neg e 		; -e  
	add ebx,e	;
	
	mov eax,ebx 
	call WriteInt 
	call DumpRegs
	call ReadInt
	exit
main ENDP
END main