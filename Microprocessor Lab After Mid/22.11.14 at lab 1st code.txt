
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA 

m1 db "Enter three initial : $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h   
    
    mov bl,al
    
    
    mov ah,1
    int 21h 
         
    mov cl,al
    
    
    mov ah,1
    int 21h
    
    mov bh,al
    
    
    
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0ah
    int 21h  
    
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0ah
    int 21h 
    
    mov ah,2
    mov dl,cl
    int 21h
       
       
    mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0ah
    int 21h 
   
    mov ah,2
    mov dl,bh
    int 21h
    
    main endp
    

ret



