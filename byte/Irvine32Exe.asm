TITLE      (.asm)


Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib


.data


.code
main PROC
	mov ah,9
	call DumpRegs
	mov al,2
	call DumpRegs
	mov ax,345678h
	call DumpRegs
	
	
	mov ebx,0
	mov bx,1A69Bh
	call DumpRegs
	
	mov al,12
	call DumpRegs
	mov ah,16
	call DumpRegs
	call WaitMsg
	
	exit
main ENDP
END main