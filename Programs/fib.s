;aasm

.main
    lda #1
    ldb #1

loop:
    sta %0129
    add
    lmb %0129
    out
    jmp loop

toAscii:
    