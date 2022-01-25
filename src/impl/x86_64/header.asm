; header.asm

section .multiboot_header
header_start:
    dd 0xe85250d6                                                   ; Required magic number for multiboot2 to work
    dd 0                                                            ; Architecture: protected mode i386
    dd header_end - header_start                                    ; Header length
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start)) ; Checksum

    ; End tag
    dw 0
    dw 0
    dd 8
header_end: