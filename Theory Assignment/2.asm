.model small
.stack 100h
.data
msg1 db "enter the number between (1-9):$"
msg2 db "ODD$"
msg3 db "EVEN$"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    sub al,30h
    mov bl,al
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    cmp bl,1
    je odd
    
    
    cmp bl,2
    je even
    
    
    cmp bl,3
    je odd
    
    
    cmp bl,4
    je even
    
    
    cmp bl,5
    je odd
    
    
    cmp bl,6
    je even
    
    
    cmp bl,7
    je odd
    
    
    cmp bl,8
    je even
    
    
    cmp bl,9
    je odd
    
    
    odd:      
     
    lea dx,msg2
    mov ah,9
    int 21h 
    jmp end
    
    
    even:
    
    lea dx,msg3
    mov ah,9
    int 21h
    
    end:
    mov ah,4ch
    int 21h
    
    
    
    main endp
end main