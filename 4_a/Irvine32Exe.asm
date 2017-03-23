TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib

KEY = 239 
BUFMAX = 128 

.data
	sPrompt byte "Enter the plain text ",0
	sEncrypt byte "Cipher text ",0
	sDecrpyt byte "Decryted ",0
	buffer byte BUFMAX + 1 DUP (0)
	bufSize dword ?
.code
main PROC
	call InputTheString 
	call TransiateBuffer
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
	Ret
InputTheString endp

END main