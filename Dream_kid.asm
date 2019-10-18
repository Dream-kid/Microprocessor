org 100h
mov al,03h
mov bl,09h
call BcdToHexa
mov al,05h
jmp exit

BcdToHexa PROC NEAR
    
    pushf
    push ax
    push bx
    push cx
    push dx
    
    mov ax,[input1+0]
    mov bx,[input2+0]
    
    mul bx 

    mov [output+0],ax 
    mov [output+2],dx 
    
    mov ax,[input1+2]
    mov bx,[input2+0]
    
    mul bx 

    add ax,[output+2]
    mov [output+2],ax 
    mov [output+4],dx
    
    
    mov ax,[input1+0]
    mov bx,[input2+2]
    
    mul bx      

    add ax,[output+2]
    mov [output+2],ax
    
    jc addcarry 
    jmp normal                     
    
    addcarry: 
    mov ax,dx
    add ax,0001h
    mov dx,ax
    
    normal: 
    add dx,[output+4]
    mov [output+4],dx
    
    
    mov ax,[input1+2]
    mov bx,[input2+2]
    
    mul bx      

    add ax,[output+4] 
    mov [output+4],ax
    
    jc addcarry2 
    jmp normal2
    
    addcarry2: 
    mov ax,dx
    add ax,0001h
    mov dx,ax
    
    normal2: 
    mov [output+6],dx
   
    
    
    pop dx
    pop cx
    pop bx
    pop ax
    popf
    ret
    
BcdToHexa ENDP

exit:
ret   

input1 dd 25213206h
input2 dd 64001a26h 

output dd 2 ? 
