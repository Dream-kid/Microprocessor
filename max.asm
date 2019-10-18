org 100h

;mov al,length     

mov cx,length
lea si,arr
mov bl,[si]

loop1:
cmp [si],bl
jc read 
mov bl,[si]
read:
inc si 

;dec al    
;cmp al,00h
;jne loop1

loop loop1

ret
arr db  07h,02h,06h,08h,05h
length EQU ($-arr)