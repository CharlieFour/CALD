INCLUDE c:\Users\rafay\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
	num DWORD ?
	takeInput BYTE "Enter an integer: ",0
	printDec BYTE "Decimal: ",0
	printHex BYTE "Hexadecimal: ",0
	printBinary BYTE "Binary: ",0

.code
MAIN PROC
	;Take input from the user
	mov edx, OFFSET takeInput
	call WriteString

	call ReadInt
	mov num, eax

	call Crlf

	;print the decimal
	mov edx, OFFSET printDec
	call WriteString
	
	mov eax, num
	call WriteDec

	call Crlf
	;print the hexadecimal
	mov edx, OFFSET printHex
	call WriteString

	mov eax, num
	call WriteHex

	call Crlf
	
	;print the binary
	mov edx, OFFSET printBinary
	call WriteString

	mov eax, num
	call WriteBin

	call Crlf

	;show the CPU registers
	call DumpRegs
	
	exit

MAIN ENDP
END MAIN