TITLE      (.asm)
;รับอักขระสูงสุดไม่เกิน4ตัว
;กรณีรับไม่ถึง4ตัว ให้จบการรับด้วย Enter(0Dh)
Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib



.data

txt1 byte "Input:",0
txt2 byte "Output:",0 
txt3 byte ?
.code
main PROC
	mov edx,offset txt1
	call WriteString
	
	mov ecx,0
	mov esi,0

L1:	cmp ecx,4	;char 4 ? 
	je  Output
	call ReadChar
	call WriteChar
	cmp al,0Dh	; char key Enter
	je Output
	mov txt3[esi],al
	inc esi
	inc ecx
	jmp L1

Output:
	call Crlf
	mov edx,offset txt2
	call WriteString
	mov esi,ecx
	jmp Print
	
Print: dec esi
	 mov al,txt3[esi]
	 call WriteChar
	 Loop Print
	 
	call Crlf
	call WaitMsg
	exit
main ENDP
END main