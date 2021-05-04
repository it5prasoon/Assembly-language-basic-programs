
;Find square from lookup table

LDA 2500H
MOV L,A
MVI H,26H
MOV A,M
STA 2501H
HLT