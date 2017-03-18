TITLE   Summation   (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib
.data
	inter_count = 3 
	str1 byte "Enter a signed integer: ",0
	str2 byte "Thes sum of the integer is : ",0
	array dword inter_count dup(?)

.code
main PROC
	call Clrscr 
	mov esi,offset array
	mov ecx,inter_count
	call PromptForIntegers
	call ArraySum
	call DisplaySum
	call WaitMsg	
	exit
main ENDP
PromptForIntegers PROC USES esi ecx edx
	mov edx,offset str1
L1:	call WriteString
	call ReadInt
	call Crlf
	mov [esi],eax
	add esi,type dword
	Loop L1
	Ret
PromptForIntegers endp

ArraySum PROC USES esi ecx
	mov eax,0
L1:	add eax,[esi]
	add esi,type dword
	Loop L1
	Ret
ArraySum endp
DisplaySum PROC	USES edx
	mov edx,offset str2
	call WriteString
	call WriteInt
	call Crlf
	Ret
DisplaySum endp
END main