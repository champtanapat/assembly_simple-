TITLE   Summing an Array  (.asm)


Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib


.data
	intarray 	dword	1,1,1,2
	;intarray 	dword 10000,20000,30000,40009
	msgl 	byte "Total sum Array: ",0
.code
main PROC
	mov edi,offset intarray		;1 EDI = address of intarray
	mov ecx,lengthof intarray	;2 initialize loop counter
	mov eax,0
	
L1:	add eax,[edi]	
	add edi,type intarray		;point to next element 
	Loop L1
	mov edx,offset msgl
	call WriteString
	call WriteInt
	call Crlf
	call WaitMsg
	
	exit
main ENDP
END main