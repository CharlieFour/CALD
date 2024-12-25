INCLUDE irvine32.inc

.data
	ask BYTE "Enter an integer: ",0
	integer DWORD ?
	display BYTE "Integer: ",0
    promptMsg BYTE "Press Enter to exit: ",0

.code
MAIN PROC
	mov edx, OFFSET ask
	call WriteString

	call ReadInt
	mov integer, eax

	call Crlf

	mov edx, OFFSET display
	call WriteString

	mov eax, integer
	call WriteInt

    call Crlf
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadChar

	exit

MAIN ENDP
END MAIN