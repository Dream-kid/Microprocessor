
ORG 100H

MOV CX,LEN-1

OUTER:
    LEA SI,AR
    MOV AH,LEN-1        
    INNER:
        MOV AL,[SI]
        MOV BL,[SI+1]
        CMP AL,BL
            JC NOSWAP       
        MOV DL,BL
        MOV BL,AL
        MOV [SI+1],BL
        MOV AL,DL
        MOV [SI],AL
    NOSWAP:
        INC SI 
        DEC AH
        CMP AH,00H
            JNE INNER
        LOOP OUTER
RET

AR DB 0AH,01H,05H,0CH,08H,04H
LEN EQU ($-AR)