INCLUDE irvine32.inc

.data
	Uarray WORD 1000h, 2000h, 3000h, 4000h

.code
MAIN PROC
	movzx eax, Uarray
	movzx ebx, [Uarray+2]
	movzx ecx, [Uarray+4]
	movzx edx, [Uarray+6]

	call DumpRegs

	exit

MAIN ENDP
END MAIN