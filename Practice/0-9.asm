
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h

.data
msg1 db "Enter the number from 0 to 9: $"
msg2 db 0dh,0ah,"The number is:$"

.code
main proc
        mov ax,@data
        mov ds,ax
        
        lea dx, msg1
        mov ah,9
        int 21h
        
        
        mov ah,1
        int 21h
        
        mov bl,al
        
        
        lea dx,msg2
        mov ah,9
        int 21h
        
        
        
        
    
    main endp
end main

ret




