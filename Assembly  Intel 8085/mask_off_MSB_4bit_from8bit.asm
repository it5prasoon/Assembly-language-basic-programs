
;<Mask off most significant 4 bits of an 8-bit number>
lda 2501H
ani 0FH
STA 2502H
hlt