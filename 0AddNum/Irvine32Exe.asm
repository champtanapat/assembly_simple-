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

var1 byte 2 
var2 byte 3
;sum byte ?
txt1 byte "Input Number1: ",0
txt2 byte "Input Number2: ",0 
txt3 byte "Sum: ",0
sum dword 0
.code
main PROC
	mov eax,0
	mov ebx,0
	mov edx,offset txt1
	call WriteString
	call ReadInt
	call WriteInt
	call Crlf
	mov ebx,eax 
	call DumpRegs
	
	mov edx,offset txt2
	call WriteString 
	call ReadInt
	call WriteInt
	call Crlf
	call DumpRegs
	
	mov edx,offset txt3
	call WriteString
	
	add ebx,eax
	mov eax,ebx
	call WriteInt
	call ReadInt
	
	
	exit
main ENDP
END main