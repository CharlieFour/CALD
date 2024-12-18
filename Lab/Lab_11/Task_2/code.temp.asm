INCLUDE c:\Users\rafay\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
	max DWORD 20
	counter DWORD 10
	message BYTE "Printing randome 10 numbers: ",0
	space BYTE " ",0

.code
MAIN PROC
	mov edx, OFFSET message
	call WriteString

	mov ecx, counter
	printNum:
		mov eax, max
		call RandomRange
		call WriteInt
		
		mov edx, OFFSET space
		call WriteString

		loop printNum

		call Crlf

	exit

MAIN ENDP
END MAIN