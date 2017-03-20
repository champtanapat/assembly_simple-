TITLE      (.asm)
;โปรแกรมบวกสะสมค่าใน Array เฉพาะเลขจำนวนเต็มบวก 
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
	mov [esi],eax		;array[esi] ไม่ได้  อย่าถามว่าทำไม เพราะไม่รู้
	inc esi			;add esi , type dword
	Loop L1 
	Ret
PromptForIntegers endp

ArraySum PROC USES esi ecx 
	mov eax,0
	mov ebx,'0'

L1:	cmp bl,[esi]
	jc Next			;jump if carry CF = 1  [ <  ZF = 0 CF = 1 ]
	add eax,[esi]		;eax  บางครั้งก็ได้ บางครั้งก็ไม่ได้ งง ;ชัวร์ๆใช้ AL 
					;จำเป็นต้องใช้ร่วมกับ movzx เพราะตัวที่บวกกัน บวกบน AL
	call DumpRegs
Next:
	inc esi			;add esi,type dword  ไม่ตรงที่ต้องการ
	Loop L1
	movzx eax,al		;**** movzx ไม่รวมเครื่องหมาย movsx รวมเครื่องหมาย
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