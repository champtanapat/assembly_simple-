TITLE      (.asm)

;แสดงเฉพาะตัวใหญ่
Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib


.data
txt byte "AssemBLY",0
txt2 byte ?;sizeof txt dup(0)
.code
main PROC
	mov eax,0
	mov ebx,0
	mov esi,0
	mov ecx,lengthof txt
	
Next:mov al,txt[esi]
	cmp al,'A'
	jb skip
	cmp al,'Z'
	jg skip
	mov txt2[ebx],al
	inc ebx
skip:	
	inc esi
	Loop Next
	
	
	mov edx,offset txt2	
	call WriteString
	call Crlf
	call WaitMsg	
	exit
main ENDP
END main