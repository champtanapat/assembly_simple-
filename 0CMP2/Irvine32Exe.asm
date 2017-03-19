TITLE      (.asm)

; โปรแกรมรับเฉพาะ a-z 
;1)แสดงตัวใหญ
;2)แสดงฐาน16

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib



.data

txt1 byte "Input char a-z: ",0 
txt2 byte "Output = ",0
txt3	byte "Hexadecimal ASCII = ",0
.code
main PROC
	mov eax,0
	mov edx,offset txt1
	call WriteString
	call ReadChar
	mov bl,al
	call WriteChar
	call Crlf
	
	mov edx,offset txt3
	call WriteString
	movzx eax,bl
	call WriteHex
	call Crlf
	
	cmp al,'a'		;a=61 1=31	 
	jb	END_	;<a
	cmp al,'z'		
	jle	Then	;<=f
	jmp END_
	
Then:
	and eax,11011111b 
	mov edx,offset txt2
	call WriteString
	call WriteChar
	call Crlf
	mov edx,offset txt3
	call WriteString
	call WriteHex
	
	call Crlf
	jmp END_
	
END_ : 
	call WaitMsg
	exit
main ENDP
END main