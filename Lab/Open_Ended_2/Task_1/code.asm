INCLUDE irvine32.inc

.data
	printMessage BYTE "welcome assamble language",0
    promptMsg BYTE "Press any key to continue...", 0

.code
MAIN PROC
	mov edx, OFFSET printMessage
	call WriteString

    call Crlf
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadChar
	
	exit

MAIN ENDP
END MAIN