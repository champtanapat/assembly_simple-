TITLE   ������Ҥ�ҹ����ش    (.asm)

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib


.data
	V1 byte +127		;7FH
	V2 byte -128		;80h
	V3 byte +30		;1E

.code
main PROC
	mov eax,0
	mov al,V1	;7FH 
	cmp al,V2	;if ax <= v2 then  (7FH <= 80H )
	jle L1		;JLE jump if less than or equal ���ⴹ����͹���������ҡѺ 
	mov al,V2 
L1:	cmp al,V3
	jle	L2
	mov al,V3
L2:	
	call Clrscr
	call WriteHex
	call Crlf
	call WaitMsg
	
	exit
main ENDP
END main