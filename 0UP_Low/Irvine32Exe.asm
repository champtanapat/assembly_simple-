TITLE      (.asm)
;โปรแกรมรับข้อมูลเฉพาะตัวใหญ่หรือตัวเล็กเท่านั้น 
;ผลลัพธ์แสดงตัวเล็กทั้งหมด และ ตัวใหญ่ทั้งหมด 

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

; (insert symbol definitions here)

.data
input byte "Input Char: ",0
txt1 byte "Upper case: ",0
txt2 byte "Lower case: ",0
array byte ? 
Upp	byte ?
Lo	byte ?
up dword ? 
countUp dword ?
countLow dword ?
.code
main PROC
	mov edx,offset input
	call WriteString
	mov esi,0
	mov ecx,0
	mov eax,0
	mov countUp,0
	mov countLow,0
Input:	
	call ReadChar
	call WriteChar
	cmp al,0Dh
	je Stop
	inc ecx
	mov array[esi],al
	;mov Upp[esi],al
	inc esi
	jmp Input
	
Stop:
	 call Clrscr
	 jmp Process
	 
Process:
	;mov ecx,4
	mov esi,0 ;offset array
L2:	mov al,array[esi]
	cmp al,'Z'
	jg Low_		;al > 'Z' a-z 
	jl Up			;al < 'Z' A-Z
	jmp Next

Up:
	mov array[esi],al
	call WriteChar
	;mov Upp[esi],al
	inc countUp
	jmp Next
	
Low_: 
	
	inc countLow
	jmp Next
	
Next:
	;inc esi 
	;add esi,type byte
	inc esi
	Loop L2
	mov ecx,countUp
	jmp Print  
	

comment !	
!

comment !!

Print: 
	mov esi,0
	mov eax,0
	jmp P1
P1: 
	mov al,Upp[esi]
;	call WriteChar
	;inc esi
	add esi,type byte
;	call DumpRegs
	Loop P1
	
	call Crlf
	call WaitMsg
	exit
main ENDP
END main