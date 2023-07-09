;aasm

.body

_init: main

int:
    rti

main:
    ldi xr,0
    jmp loop

print:
    out ar, $0f
    nop
    nop
    inx

loop:
    ldr ar, message, x
    bit
    jnz print

    hlt
    jmp main

message:
    "Hello, world!\nMy name is Aidan Carter.\n"

; Expected output
; v2.0 raw
; 0
; 3
; 8c
; 8
; 0
; 75
; 0
; d
; 3c
; f
; 2
; 2
; 63
; 10
; 0
; 18
; 73
; 79
; 0
; 8
; 98
; 75
; 0
; 3
; 48
; 65
; 6c
; 6c
; 6f
; 2c
; 20
; 77
; 6f
; 72
; 6c
; 64
; 21
; a