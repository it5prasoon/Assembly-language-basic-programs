LXI H,2501H
MVI B,00
MOV A,M
CMA
ADI 01
STA 2503H
JNC GO
INR B
GO: INX H
MOV A,M
CMA
ADD B
STA 2504H
HLT