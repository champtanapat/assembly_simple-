TITLE      (.asm)
;โปรแกรมตรวจสอย รหัสผ่านขนาด 4 ตัว ถ
;ถ้าใช Correct 
;Incorrect แล้วป้อนใหม่ 
;ผิดครบสามครั้ง แจ้ง sorry
Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib


.data
pas_txt  byte "Password: ",0
pas_cor byte "Correct",0
pas_not byte "InCorrect",0
pas_sor byte "Sorry",0
pass1 byte "1234",0
array byte  ($-pass1)-1 dup (?) ;dup()
.code

main PROC
	mov ebx,0
	
PRINT:	
	;call Clrscr
	mov eax,0
	mov edx,offset pas_txt
	call WriteString
	mov ecx,lengthof pass1-1
	mov esi,0
	jmp Input

Input:	
	call ReadChar
	cmp al,pass1[esi]
	jne NotCorrect
	mov array[esi],al
	mov al,'*'
	call WriteChar
	inc esi
	Loop Input
	jmp Correct
	
NotCorrect: 
	inc ebx
	cmp ebx,3
	je Sorry
	call Crlf
	mov edx,offset pas_not
	call WriteString
	call Crlf
	jmp PRINT
	
Correct:
	call Crlf
	mov edx,offset pas_cor
	call WriteString
	call Crlf
	call WaitMsg
	exit		
Sorry: 	
	call Crlf 
	mov edx,offset pas_sor
	call WriteString
	call Crlf
	call WaitMsg
	exit
main ENDP
END main