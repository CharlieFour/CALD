INCLUDE c:\Users\rafay\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
    print BYTE "Printing Number from 1 to 9: ",0
    counter DWORD 9
    num DWORD 1
    promptMsg BYTE "Enter any character to exit: ",0

.code
MAIN PROC
    mov edx, OFFSET print
    call WriteString

    call Crlf

    mov ecx, counter
printNumber:
    mov eax, num
    call WriteInt

    call Crlf

    add eax,1
    mov num, eax

    loop printNumber

    call Crlf
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadChar

    exit

MAIN ENDP
END MAIN
