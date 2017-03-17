TITLE Search in Array     (.asm)

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib


.data
	array sword -3,-6,-1,-10,10,30,40,4
	sentinel sword 0
.code
main PROC
	mov esi,offset array
	mov ecx,lengthof array 
L1:	test WORD PTR [esi],8000h
	pushfd				;push flage on stack
	add esi,type array		; move to next position
	popfd				;pop flage from stack
	loopnz L1
	
	jnz quit
	sub esi,type array

quit:
	call WaitMsg
	
	exit
main ENDP
END main