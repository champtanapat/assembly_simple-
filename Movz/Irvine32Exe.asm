TITLE    Movxz  (mov with zero-extend  ย้ายข้อมูลขนาดเล็กไป reg ขนาดใหญ่ ) (.asm)

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

.data
byte1 byte 9bh 
word1 word 0A69Bh 

.code
main PROC
	movzx 	eax,word1
	call 		DumpRegs
	movzx 	eax,byte1
	call 		DumpRegs
	call 		WaitMsg
	exit
main ENDP
END main