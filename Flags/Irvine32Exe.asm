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
	mov al,-1
	add al,1
	lahf 		;Save flage to ah 
	call WriteBin
	sahf 	; Restore flage form ah 
	call DumpRegs
	
	
	mov eax,42
	call DumpRegs
	mov eax,0
	mov eax,43
	call DumpRegs
	call WaitMsg
	exit
main ENDP
END main