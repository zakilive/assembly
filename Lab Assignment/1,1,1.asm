.model small
.stack 100h
.data
m1 db "The sum of 5 and 4 is:$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h 
    
    
    mov ah,5
    add ah,4
    int 21h
    

    
    mov ah,4ch
    int 21h
    
    main endp

end main