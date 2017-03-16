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
arrayB byte 10h,20h,30h
arrayW word 1000h,2000h,3000h
arrayD dword 100000h,200000h,300000h

.code
main PROC
	mov eax,0 
	;------------------ Array of Byte ----------------;
	mov esi,offset arrayB 
	mov al,[esi] 	;AL = 10h 
	call DumpRegs
	inc esi
	mov al,[esi]	;AL = 20h 
	call DumpRegs
	inc esi
	mov al,[esi]	;AL = 30h
	call DumpRegs
	call Crlf

	;------------------ Array of Word ----------------;	
	mov esi,offset arrayW
	mov ax,[esi]
	call DumpRegs
	mov ax,[esi + 2 ] 
	call DumpRegs 
	mov ax,[esi + 4 ] 
	call DumpRegs
	call Crlf
	call WaitMsg
	
	;------------------ Array of DoubleWord ----------------;	
	
	mov esi,offset arrayD
	mov eax,[esi]
	call DumpRegs
	mov eax,[esi+4]
	call DumpRegs
	mov eax,[esi+8]
	call DumpRegs
	call Crlf
	call WaitMsg 
	
	exit
main ENDP
END main