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
val1 dword 10000h
val2 dword 20000h
val3 dword 30000h
finalVal dword ? 
.code
main PROC

	mov eax,41h
	call Crlf
	call WriteChar
	
	mov eax,5ah
	call Crlf
	call WriteChar 
	
	mov eax,31h
	call Crlf
	call WriteChar
	
	mov eax,1
	call Crlf 
	call WriteInt
	
	
	call Crlf 
	mov ah,'b'
	call WriteChar 
	call DumpRegs 
	
	
	call Crlf 
	mov al,'a'
	call WriteChar
	call DumpRegs 
	
	
	
	
	mov ax,'c'
	call WriteChar 
	call DumpRegs 
	
	;call WriteChar 
	
	call ReadInt    
;	mov eax,0
;	call WriteInt 
;	call DumpRegs
;	
	
;	mov eax,5
;	call WriteInt 
;	call DumpRegs

	
;	add eax,val2
;	call WriteInt 
;	call DumpRegs
	
;	sub eax,val3 
;	call WriteInt 
;	call DumpRegs
	
;	mov finalVal,eax
;	call WriteInt 
;	call DumpRegs 
;	call ReadInt 
	   
	exit
main ENDP
END main