.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    
    cmp al,'Y'
    jne end_if:
    cmp al,'y'
    jne end_if
    
    mov dl,al
    mov ah,2
    int 21h
    
    end_if:
    mov ah,4ch
    int 21h
    
    
   
   main endp
end main