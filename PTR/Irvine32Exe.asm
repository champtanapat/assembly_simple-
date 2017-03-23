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

myDouble dword 12345678h
singeVal sword -18 
.code
main PROC
;	mov eax,0
;	call DumpRegs
	mov eax,1
	mov ebx,2
	neg ebx
	add eax,ebx
	call DumpRegs
	
	mov eax,1
	mov ebx,1
	neg ebx
	add eax,ebx
	call DumpRegs
comment !
	mov al,0FFh
	add al,1
	call DumpRegs
	
	mov eax,0
	mov ax,singeVal
	call DumpRegs
	mov ebx,0
	mov bx,12345678h
	call DumpRegs
	
	mov ebx,0
	mov ax,word ptr myDouble 
	call DumpRegs
	mov ax,word ptr myDouble+2
	call DumpRegs
	mov eax,0
	
	mov al,byte ptr myDouble
	call DumpRegs
	mov al,byte ptr myDouble+1
	call DumpRegs
	mov al,byte ptr myDouble+2
	call DumpRegs
	mov al,byte ptr myDouble+3
	call DumpRegs
	!
	call WaitMsg
	
	exit
main ENDP
END main