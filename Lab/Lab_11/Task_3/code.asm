INCLUDE irvine32.inc

.data
	naam BYTE 21 DUP(0) ; name is reseve word that is why using naam
	;DUP fill 21 bytes of 0 in naam

	askName BYTE "Enter your name: ",0
	printName BYTE "Name: ",0

.code
MAIN PROC
	mov edx, OFFSET askName
	call WriteString

	mov edx, OFFSET naam ; read string will store the buffer

	mov ecx, 21 ; count to read 21 characters only
	call ReadString

	call Crlf

	mov edx, OFFSET printName
	call WriteString

	mov edx, OFFSET naam
	call WriteString

	exit

MAIN ENDP
END MAIN