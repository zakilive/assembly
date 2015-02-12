
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
m1 db "Enter the line:$"
m2 db 0dh,0ah,"The output is:$"
.code
main proc
        
        ;initialization of data segment
        
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,m1
        int 21h
        
        ;taking input
        
        mov ah,1
        int 21h
        
        mov bl,al
        sub bl,20h
        
        mov ah,1
        int 21h
        
        mov bh,al
        sub bh,20h
        
        mov ah,1
        int 21h
        
        mov ch,al
        sub ch,20h
        
        mov ah,1
        int 21h
        
        mov cl,al
        sub cl,20h
        
        mov ah,1
        int 21h
        
        mov dh,al
        sub dh,20h
       
       
       ;display
       
       mov ah,9
       lea dx,m2
       int 21h
       
        
       mov ah,2
       mov dl,bl
       int 21h
           
       
       mov ah,2
       mov dl,bh
       int 21h
       
       mov ah,2
       mov dl,ch
       int 21h
       
       mov ah,2
       mov dl,cl
       int 21h
       
       mov ah,2
       mov dl,dh
       int 21h
       
       ;dos exit
              
       mov ah,4ch
       int 21h
                   
                     
    main endp
end main

ret




