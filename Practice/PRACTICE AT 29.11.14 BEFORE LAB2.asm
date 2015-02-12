
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h    
.data
asterisks db "**********",0dh,0ah,"$"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,asterisks
    

    
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h 
    int 21h
    int 21h
    int 21h
    
    
    
    main endp
    end main
    

ret




