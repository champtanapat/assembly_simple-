TITLE   (mov with sing -extend  ���¢����Ţ�Ҵ���� reg ��Ҵ�˭� Ẻ������ͧ���� )     (.asm)

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib



.data

	byteVal byte 10001111b
	test1 byte 1001b 
		
.code
main PROC

	mov eax,0
	mov al,byteVal 
	call DumpRegs
	call WriteBin
	mov eax,0
	
	movsx ax,byteVal 
	call DumpRegs
	 call WriteBin
	 
	 movsx eax,byteVal
	 call DumpRegs
	 call WriteBin
	call WaitMsg
	exit
main ENDP
END main