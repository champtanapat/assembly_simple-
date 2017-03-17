TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

	KEY = 29 ; any value between 1-255
	BUFMAX = 128 ; maximum buffer size
.data
	sPrompt byte "Enter the plain text: ",0
	sEncrypt byte "Cipher text: ",0
	buffer byte BUFMAX + 1 DUP(0)
	bufSize dword ?

.code
main PROC
	call InputTheString
	call TranslateBuffer
	mov edx,offset sEncrypt  
	call DisplayMessage 
	call WaitMsg
	exit
main ENDP


InputTheString PROC
	pushad
	mov edx,offset sPrompt
	call WriteString
	mov ecx,BUFMAX
	mov edx,offset buffer 
	call ReadString 
	mov bufSize,eax
	call Crlf
	popad
	ret
InputTheString ENDP

TranslateBuffer PROC
	pushad
	mov ecx,bufSize 
	mov esi,0
L1:	
	xor buffer[esi],KEY  ;Translate a byte 
	inc esi
	Loop L1
	popad 
	Ret
TranslateBuffer endp

DisplayMessage PROC
	pushad 
	call WriteString
	mov edx,offset buffer
	call WriteString
	call Crlf
	call Crlf
	popad
	ret
DisplayMessage endp
END main