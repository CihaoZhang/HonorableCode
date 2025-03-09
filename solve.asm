11 110 101 ; mov reg6 


00 0000 ; load 0 into reg0
11 000 010 ; mov reg0 reg2 (reg2 counter to 0) Pointer 1

00 0000 
11 000 100 ; move reg0 reg4 (reg2 counter to 0) Pointer 2

;main loop
11 010 001 ; mov reg2 reg1 (loop 1)
11 110 001 ; mov reg6 reg2
01 000 001 ; ALU subtract (sub r1-r2) 
00 010 101 ; Load immediate 21 into reg0 (exit address)
10 000 111 ; Jump if reg3 >=0 
11 110 000 ; mov reg6 reg0 
11 000 101 ; mov reg0 reg5 (store in memory) 
11 100 001 ; mov reg4 reg1
00 000 001 ; Load immediate 1 into reg0
11 000 010 ; mov reg0 reg2 
01 000 000 ; ALU add (add r1 + r2)
11 011 100 ; mov reg3 reg4 
11 010 001 ; mov reg2 reg1 
00 000 001 ; Load immediate 1 into reg0 
11 000 010 ; Mov reg0 reg2 
01 000 000 ; ALU add (add r1 r2) 
11 011 010 ; Mov reg3 reg2 
00 000 100 ; Load immediate 4 into reg0  
10 000 000 ; Jump

;Start pointer var
00 0000 
11 000 001 ; load into reg 1
11 110 010 ; mov reg6 reg2 (right=N-1) 
00 000 001 ; Load immediate 1 into reg0 
01 000 001 ; ALU subtract (sub r2 - r0) 
11 011 010 ; mov reg3 reg2 
00 000 000 ; Load immediate 0 into reg0 (l_max=0) 
11 000 011 ; mov reg0 reg3 
00 000 000 ; Load immediate 0 into reg0 (r_max=0) 
11 000 100 ; mov reg0 reg4 
00 000 000 ; Load immediate 0 into reg0 (result=0)
11 000 110 ; mov reg0 reg6 

11 001 001 ; mov reg1 reg1 (loop) (temp)
11 010 010 ; mov reg2 reg2 (temp)
01 000 001 ; ALU subtract (sub r1 - r2) 
00 110 010 ; Load immediate 50 (exit address)
10 000 100 ; Jump if reg3 < 0 

;min max
11 011 010 ; compare
11 100 010 ; mov reg4 reg2 (0xE2)
01 000 001 ; ALU subtract (sub r1 - r2)
00 010 000 ; Load immediate 16 
10 000 100 ; Jump if reg3 < 0 

;left traversal
11 001 100 ; mov reg1 reg4
11 101 000 ; mov reg5 reg0
11 000 010 ; mov reg0 reg2
11 011 001 ; mov reg3 reg1
01 000 001 ; ALU subtract (sub r1 - r2)
00 001 010 ; Load immediate 10 
10 000 100 ; Jump if reg3 < 0 (current > l_max)
11 000 011 ; mov reg0 reg3 (update l_max) 
00 001 111 ; Load immediate 15 
10 000 000 ; Always jump 

11 011 001 ; mov reg3 reg1 
11 110 110 ; mov reg6 reg6 (temp)
01 000 000 ; ALU add (add r1 r6) 
11 011 110 ; mov reg3 reg6 

11 001 001 ; mov r1 to r1 (temp)
00 000 001 ; Load immediate 1 
11 000 010 ; mov r0 r2 
01 000 000 ; ALU add (add r1 + 1) 
11 011 001 ; mov r3 r1 
00 011 110 ; Load immediate 30 
10 000 000 ; Always jump 

;right traversal 
11 010 100 ; mov r2 r4
11 101 000 ; mov r5 r0 
11 000 010 ; mov r0 r2 
11 100 001 ; mov r4 r1 
