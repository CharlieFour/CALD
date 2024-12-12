INCLUDE Irvine32.inc

.data
    array DWORD 10, 20, 30, 40, 50 ; Example array
    sum DWORD 0
    count DWORD 5
    avg DWORD ?
    msgSum BYTE "Sum: ", 0
    msgAvg BYTE "Average: ", 0
    promptMsg BYTE "Press any key to continue...", 0

.code
main PROC
    ; Calculate Sum
    mov esi, OFFSET array
    mov ecx, count
    mov eax, 0 ; Sum accumulator

sum_loop:
    add eax, [esi]
    add esi, 4
    loop sum_loop

    ; Store sum
    mov sum, eax

    ; Calculate Average
    mov edx, 0
    mov ebx, count
    div ebx ; eax = quotient, edx = remainder
    mov avg, eax

    ; Print Results
    mov edx, OFFSET msgSum
    call WriteString
    mov eax, sum
    call WriteInt

    call Crlf

    mov edx, OFFSET msgAvg
    call WriteString
    mov eax, avg
    call WriteInt

    ; Pause the screen
    call Crlf
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadChar

    exit
main ENDP
END main
