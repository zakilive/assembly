
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h
    
    mov bl,al
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    cmp bl,'1'
    je ODD
    cmp bl,'3'
    je odd
    cmp bl,'2'
    je even
    cmp bl,'4'
    je even
    jmp exit
    
    odd:
    mov ah,2  
    mov dl,'0'
    int 21h
    jmp exit
    
    even:
    mov ah,2
    mov dl,'E'
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    
    
    
    
    
    main endp
end main

ret




