; bios loads into memory address 7c00
ORG 0x7c00
BITS 16 ;using 16 bit architecture

start:
    mov ah, 0eh
    mov al, 'A'
    mov bx,0
    int 0x10 ; interrupt : https://www.ctyme.com/intr/rb-0106.htm 

    jmp $

times 510-($ - $$) db 0 ; Fill atleast 510 bytes of data
dw 0xAA55 ;Intel machines are little endian, so the bytes gets flipped when working with words