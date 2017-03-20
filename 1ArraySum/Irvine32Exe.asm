TITLE      (.asm)
;������ǡ�������� Array ੾���Ţ�ӹǹ����ǡ 
;Input 3 4 -1 7 -3 
;Output 14
Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

integer_count = 5

.data
str1 byte "Enter a signed integer: ",0
str2 byte "The sum of integer is: ",0
array dword integer_count dup(?) 
.code
main PROC
	mov esi,offset array 
	mov ecx,integer_count
	mov eax,0
	call PromptForIntegers
	call ArraySum 
	call DisplaySum
	call WaitMsg
	exit
main ENDP
PromptForIntegers PROC USES ecx esi edx 
	
L1:	mov edx,offset str1
	call WriteString
	call ReadInt
	mov [esi],eax		;array[esi] �����  ���Ҷ����ҷ��� ����������
	inc esi			;add esi , type dword
	Loop L1 
	Ret
PromptForIntegers endp

ArraySum PROC USES esi ecx 
	mov eax,0
	mov ebx,'0'

L1:	cmp bl,[esi]
	jc Next			;jump if carry CF = 1  [ <  ZF = 0 CF = 1 ]
	add eax,[esi]		;eax  �ҧ���駡��� �ҧ���駡������ �� ;�������� AL 
					;���繵�ͧ�������Ѻ movzx ���е�Ƿ��ǡ�ѹ �ǡ�� AL
	call DumpRegs
Next:
	inc esi			;add esi,type dword  ���ç����ͧ���
	Loop L1
	movzx eax,al		;**** movzx ����������ͧ���� movsx �������ͧ����
	Ret
ArraySum endp

DisplaySum PROC	USES edx 
	mov edx,offset str2 ;
	call WriteString
	call WriteInt
	call Crlf
	Ret
DisplaySum endp


END main