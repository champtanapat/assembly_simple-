TITLE      (.asm)
;������Ѻ�����ŷ���繵���Ţ 0 - 9 
;
Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib



.data
txt1 byte "InputNumber:",0
txt2 byte "Max Value:",0
txt3 byte "Min Value:",0
array byte ?
max byte ?
min byte ? 
.code
main PROC
	mov edx,offset txt1
	call WriteString
	mov ecx,0
	mov esi,0
	
L1:	call ReadChar
	call WriteChar
	cmp al,0Dh
	je SET		;
	cmp al,'0'
	jb L1		;jb
	cmp al,'9'		
	ja L1 		;ja jg
	mov array[esi],al
	
	inc ecx
	inc esi
	jmp L1
	
SET:
	;ecx=2
	mov eax,0
	mov esi,0
	mov al,array[esi]	;bl = 9
	call DumpRegs
	mov max,al
	dec ecx
	jmp MAX_MIN
	
MAX_MIN:
	inc esi
	cmp al,array[esi] 		; jump when bl or  soure ? less 
	jg Next				; bl > ; 1 > 9
	mov al,array[esi]		;
	mov max,al			;
Next:	
	mov al,array[esi]		;
	mov max,al			;
	call DumpRegs		;
	Loop MAX_MIN		;
	
DONE:
	
	mov edx,offset txt2
	call WriteString
	mov al ,max
	call WriteChar
	call Crlf
	call WaitMsg	
	exit
Stop: 
	exit	
main ENDP
END main