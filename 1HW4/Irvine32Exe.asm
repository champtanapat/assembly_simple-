TITLE      (.asm)
;����¹�������Ѻ �ӴѺ����Ţ� Arrayint ����Ѻ����Ţ����ҡ�͹ 
;���ѧ�纵�� �ӴѺ� ArrayInt 
;input 10 20 30 40 
;output 40 30 20 10 
Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

integer_count = 4 
.data
	txt1 byte "Input: ",0
	txt2 byte "Output: ",0
	array dword integer_count dup(?)
.code
main PROC
	mov edx,offset txt1
	
	
	mov ecx,integer_count
	mov esi,0
	
L1:  call WriteString
	call ReadInt
	push eax
	mov array[esi],eax
	inc esi
	Loop L1
	
	mov edx,offset txt2
	call WriteString

	mov ecx,integer_count
	mov esi,0
Swap: 
	pop eax
	call WriteInt
	mov array[esi],eax
	inc esi
	Loop Swap
	
	call Crlf
	call WaitMsg
	exit
main ENDP
END main