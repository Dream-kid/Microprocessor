
org 100h

LEA SI,AR
LEA DI,AR1 
ADD DI,LEN-1
MOV CX,LEN

LEBEL:
    MOV AL,[SI]
    MOV [DI],AL
    INC SI
    DEC DI
    LOOP LEBEL
    
RET

AR DB 05H,02H,04H,03H,01H 

LEN EQU ($-AR)     

AR1 DB 5 DUP(0)
