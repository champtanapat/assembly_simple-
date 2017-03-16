TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

inter_count = 2
.data
	str1 byte "Enter a signed inter: ",0 
	str2 byte "The sum of the integer is: ",0
	array dword inter_count dup(?)
.code
main PROC
	
	call Clrscr
	mov esi,offset array
	mov ecx,inter_count
	call PromptForIntegers
	call ArraySum
	call DisplaySum 

	exit
main ENDP

PromptForIntegers PROC USES ecx edx esi
	mov edx,offset str1
L1: call WriteString 
	call ReadInt
	call Crlf
	mov [esi],eax
	add esi,type dword
	Loop L1
	Ret 
PromptForIntegers ENDP	

ArraySum PROC USES esi ecx
	mov eax,0
L1:	add eax,[esi]
	add esi,type dword
	Loop L1
	Ret
ArraySum endp

DisplaySum PROC USES edx
	mov edx,offset str2
	call WriteString
	call WriteInt 
	call Crlf
	call WaitMsg
	call Crlf
	Ret
DisplaySum endp

END main

