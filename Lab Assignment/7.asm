 .model small
 .stack 100h
 .data
 .code
 
 main proc
    
    mov cx,5
    mov ah,2
    mov dl,'*'
    mov ah,2
    
    
    
    count:    
   
    int 21h
       
    int 21h 
    
    int 21h  
    
    loop count
    
    
    
    main endp
 end main