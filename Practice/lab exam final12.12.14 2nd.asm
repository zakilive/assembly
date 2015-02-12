 .model small
 .stack 100h
 .data
 .code
 
 main proc
    
    mov cx,5
    mov ah,2
    mov dl,'*' 
    jmp count
    jmp count1
    
    
    
    count:    
   
    int 21h
    loop count 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    count1:
    
    int 21h
    loop count1
    
    
    
    
    main endp
 end main