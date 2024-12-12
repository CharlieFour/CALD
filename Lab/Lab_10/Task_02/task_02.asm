INCLUDE Irvine32.inc

.data
    array1 DWORD 10, 20, 30, 40, 50
    array2 DWORD 5 DUP(?)
    count DWORD 5
    msg BYTE "Array copied successfully.", 0
    promptMsg BYTE "Press any key to continue...", 0

.code
main PROC
    ; Initialize pointers
    mov esi, OFFSET array1
    mov edi, OFFSET array2
    mov ecx, count

copy_loop:
    mov eax, [esi]
    mov [edi], eax
    add esi, 4
    add edi, 4
    loop copy_loop

    ; Display success message
    mov edx, OFFSET msg
    call WriteString

    ; Pause the screen
    call Crlf
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadChar

    exit
main ENDP
END main
