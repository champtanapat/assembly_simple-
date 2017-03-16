TITLE   Pointers   (Pointers.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

Pbyte 	typedef ptr byte 	;pointer to byte
Pword 	typedef ptr word	;pointer to words
Pdword	typedef ptr dword  ;pointer to words
 
.data

arrayB 	byte 10h,20h,30h
arrayW 	word 1,2,3
arrayD	dword 4,5,6

;Create some pointer variables 
ptr1 Pbyte 	arrayB
ptr2 Pword 	arrayW
ptr3	Pdword 	arrayD

.code
main PROC
	
	mov eax,0
	mov esi,ptr1
	mov al,[esi]		;10h
	call DumpRegs
	
	mov esi,ptr2
	mov ax,[esi]
	call DumpRegs
	
	mov esi,ptr3
	mov eax,[esi]
	call DumpRegs
	call WaitMsg 
	exit
	
main ENDP
END main