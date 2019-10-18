


ORG 100h
   
MOV AL,04H
MOV AH,02H
MOV dL,03H

cmp AL,Ah
jc loop1

mov bl,al
mov al,ah
mov ah,bl
loop1: 



cmp AL,dl
jc loop2
mov bl,al
mov al,dl
mov dl,bl
loop2:



cmp Ah,dl
jc loop3

mov bl,ah
mov ah,dl
mov dl,bl
loop3:
ret