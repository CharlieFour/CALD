INCLUDE irvine32.inc

.data
	num1 WORD 15
	num2 WORD 17
	temp WORD ?
	message1 BYTE "Number before message: ",0
	message2 BYTE "Number after swap: ",0
	space BYTE " ",0

.code
MAIN PROC
	mov edx, OFFSET message1
	call WriteString

	movzx eax, num1
	call WriteInt

	mov edx, OFFSET space
	call WriteString

	movzx eax, num2
	call WriteInt

	call Crlf

	mov ax, num1
	mov temp, ax
	mov ax, num2
	mov num1, ax
	mov ax, temp
	mov num2, ax

	mov edx, OFFSET message2
	call WriteString

	movzx eax, num1
	call WriteInt

	mov edx, OFFSET space
	call WriteString

	movzx eax, num2
	call WriteInt

	exit

MAIN ENDP
END MAIN