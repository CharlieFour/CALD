INCLUDE c:\Users\rafay\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
    array1 WORD +2, +3, +5
    array2 WORD +5, +9, +7

    dirAddressing BYTE "Direct addressing mode", 0
    indirAddressing BYTE "Indirect addressing mode", 0

    promptMsg BYTE "Press any key to continue...", 0

.code
MAIN PROC
    ; Display message for direct addressing
    mov edx, OFFSET dirAddressing
    call WriteString
    call Crlf

    ; Direct Addressing Mode
    mov ax, array1[2]        
    mov array2[1], ax        

    ; Display the updated value
    mov ax, array2[1]
    call WriteInt
    call Crlf

    ; Display message for indirect addressing
    mov edx, OFFSET indirAddressing
    call WriteString
    call Crlf

    ; Indirect Addressing Mode
    lea esi, array1          
    lea edi, array2          

    mov ax, [esi + 4]        
    mov [edi + 2], ax        

    ; Display the updated value of (indirectly updated)
    mov ax, [edi + 2]
    call WriteInt
    call Crlf

    call Crlf
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadChar

    exit

MAIN ENDP
END MAIN
