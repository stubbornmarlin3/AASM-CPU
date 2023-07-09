;aasm


.data   ; This is where data is put
    num 'a'
    ; this is a comment
    start_value $01
    prev %ffff ; These should not affect anything

.main   ; This is where the actual program is
    ; global _start

_start:
    lda #1
    ldb start_value

loop:
    sta prev
    add
    lmb prev
    push
    lda num
    cmp
    pop
    bgt loop

    out
    stb prev
    lma %ffff   ;For testing purposes using address
    out

; Addresses use %, must be 2 bytes hex (%0000 - %ffff) - Addresses %0000 - %00ff are used for the stack so be careful when setting variables
; Decimal numbers use #, must be 1 byte (#-128 - #127) - Can also be negative
; Hex numbers use $, must be 1 byte ($00 - $ff)
; Ascii chars use '', must be 1 byte ('a' - 'z', '0' - '1', *other special characters from ascii table)

; Every program starts with ;aasm to show that it is an aasm source code file.
; section .data is used to store values under a name. Supports decimal numbers, hex numbers, addresses, and chars
;     
; section .main is the start of the program. Must be followed by "global" keyword to determine the start point of the program. This is the only section that 
;     is not optional(for obvious reasons)

; Labels can be placed to indicate locations to jump or branch to. Labels end with a colon. The label defined by global is where the start of the program will be. 
; All instructions should be on newlines. Arguments for instuctions are placed after the intruction seperated by single spaces
; Comments are any text following a semicolon



   