# CALD
    INCLUDE Irvine32.inc

    .data
        message BYTE "Computer Architecture and Logical Design, project and lab assembly code", 0

    .code
    main PROC
        mov edx, OFFSET message    ;
        call WriteString           ;
        call Crlf                  ;
        mov edx, OFFSET promptMsg  ;
        call WriteString           ;
        call ReadChar              ;

    exit
    main ENDP

    .data
        promptMsg BYTE "Press any key to exit...", 0

    END main
