org 100h


mov cx,len1   
sub cx,len2
inc cx
mov al,00h


mov bp,di
mov dh,00h
inc dh

loop1: 
lea si,str1

mov ah,dh
lea di,str2
dec si
 
   ll: 
  inc si
  dec ah
  cmp ah,00h
  jne ll 
   
inc dh


mov ah,len2 


loop2:
dec ah
mov bl,[di]
mov bh,[si]
inc si
inc di
cmp bl,bh
jne read 
cmp ah,00h
jne loop2 

inc dl     
      

read:      
loop loop1

str1 db 'MLOMDLOlOAMLOL'
len1 equ ($-str1)
str2 db 'LO'
len2 equ ($-str2)  