            org 100h
            mov al,len
            cmp al,001h
            
            je ret1
            lea si,array
            lea di,array
            mov cx,len-1
            mov dl,00h
            
            loop1:
            mov al,[si]
            mov bp,si
            mov di,si
            inc di
            
            mov dl,len-1
            loop2:
            
            mov bl,[di]
            cmp al,bl
            jc read
            mov al,bl
            
            mov bp,di
            
            
            read:
            inc di
            dec dl
            cmp dl,00h
            jne loop2
            
            
            
            
            mov al,[bp]
            mov bl,[si]
            
            mov [si],al
            mov [bp],bl
            inc si
            loop loop1
            
            
            ret1:
            
            ret
            array db 01h,03h,08h,06h,05h
            len equ ($-array)