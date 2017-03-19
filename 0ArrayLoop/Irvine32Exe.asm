TITLE      (.asm)

;โปรแกรมรับอักขระ 4 ตัว แล้วแสดงแบบย้อนกลับ

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

.data

txt1 byte "Inpute: ",0
txt2 byte "Output: ",0
txt3 byte ? 
.code
main PROC
	mov edx,offset txt1
	call WriteString
	
	
	mov ecx,4
	mov esi,0
L1: 	call ReadChar
	call WriteChar
	mov txt3[esi],al
	;inc esi
	add esi,type txt3 
	Loop L1

	call Crlf
	mov edx,offset txt2
	call WriteString
	
	mov ecx,4
	mov esi,4
L2:	dec esi 
	mov al,txt3[esi]
	call WriteChar
	Loop L2
	
	call Crlf
	call WaitMsg
	
	exit
main ENDP
END main