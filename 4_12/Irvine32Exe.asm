TITLE   ค้นหาเลขที่ไม่ใช่ 0 ในอาร์เรย์   (.asm)


Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

.data
	intArray sword 1,0,0,0
	;intArray sword 0,0,0,0
	noneMsg byte "A non-zero value was not found",0
	
.code
main PROC
	mov ebx,offset intArray
	mov ecx,lengthof intArray
	
L1:	cmp WORD PTR [ebx],0	;WORD type ของ ตัวแปร 
	jnz found
	add ebx,2
	Loop L1
	jmp notFound
	
found:
	movsx eax,WORD PTR [ebx]
	call WriteInt
	jmp quit
	
notFound:
	mov edx,offset noneMsg
	call WriteString
quit:
	call Crlf
	call WaitMsg
	exit
	exit
main ENDP
END main