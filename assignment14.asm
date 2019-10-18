    org 100h
    mov ax,08h
    mov bx,09h
    mov cx,07h
    mov dx,ax
    
    cmp dx,bx
    jc swap12  
    jmp lv1 
    
    swap12:
    mov dx,bx
    
    lv1:
    cmp dx,cx
    jc swap23
    jmp lv2
    
    swap23:
    mov dx,cx
    
    lv2:
    ret 