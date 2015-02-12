
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h    
.data
asterisks db "**********",0dh,0ah,"$"
.code
main proc
    
    ;initialization of data segment
    
    mov ax,@data
    mov ds,ax
    
    
    ;load the asterisks
    
    mov ah,9
    lea dx,asterisks
    

    ;display of 10x10 solid box of asterisks
    
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




