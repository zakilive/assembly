.model small
.stack 100h
.data
m1 db "Enter two number: $"
m2 db "The sum of $"
m3 db " and $"
m4 db " = $"
.code
main proc  
    mov ax,@data
    mov ds,ax
    
    lea dx,m1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al 
    
    mov ah,1
    int 21h
    
    mov bh,al
    
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    lea dx,m2
    mov ah,9
    int 21h   
    
    mov ah,2
    mov dl,bl
    int 21h
     
    mov ah,9 
    lea dx,m3
    int 21h 
    
    mov ah,2
    mov dl,bh
    int 21h
    
    lea dx,m4
    mov ah,9
    int 21h
    
    sub bl,30h
    sub bh,30h
    
    add bl,bh
    
    add bl,30h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    main endp 
end main