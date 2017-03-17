TITLE      (.asm)

; Program Description:
; Author:
; Date Created:
; Last Modification Date:

Include Irvine32.inc

IncludeLib Irvine32.lib
IncludeLib kernel32.lib
IncludeLib user32.lib



.data
	count = 4 
	BlueTextOnGray  = blue+ (lightGray*16)
	DefualtColor = lightGray + (black * 16 )
	arrayD sdword 12345678h,1A4B2000h,3434h,7AB9h
	prompt byte "Enter a 32-bit signed inter: ",0 
.code

main PROC
	mov eax,BlueTextOnGray	;Select  blue 	text  on lightGray background
	;mov eax,yellow+(blue*16)	;Set for yellow text on blue 	background
	call SetTextColor
	call Clrscr
;Display an array using DumpMEM. 
	mov esi,offset arrayD
	mov ebx,type arrayD
	mov ecx,lengthof arrayD
	call DumpMem	
	
;Ask the user to input a sequence of signed integers
	call Crlf
	mov ecx,count 
L1:
	mov edx,offset prompt
	call WriteString
	call ReadInt
	call Crlf
;Display the integer in decimal,hexadecimal,and binary 
	call WriteInt
	call Crlf
	call WriteHex
	call Crlf
	call WriteBin
	call Crlf
	call Crlf
	Loop L1
;Return the console window to default colors
	call WaitMsg
	mov eax,DefualtColor
	call SetTextColor
	call Clrscr
	exit
main ENDP
END main