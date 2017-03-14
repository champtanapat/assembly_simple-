TITLE  คำสั่ง xchg สลับค่าระหว่าง หน่วยความจำกับรีสจิสเตอร์    (.asm)

;	xchg reg,reg
;	xchg reg,mem
;	xchg mem,reg ;ไม่มีการสลับกับค่าคงที่

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

.data
;val1 word 10
;val2 word 15
val1 byte '10'
val2 byte 2

.code
main PROC
	mov eax,0
	mov al,val1
	call DumpRegs
	xchg al,val2
	call DumpRegs
	call WaitMsg
	
	exit
main ENDP
END main