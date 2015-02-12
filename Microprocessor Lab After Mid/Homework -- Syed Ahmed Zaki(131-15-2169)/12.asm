
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
   m1 db 0dh,0ah,"Enter three initials:$"
   asterisks db "***********",0dh,0ah,"$"
.code

main proc  
      
      ;initialization of data segment
    
      mov ax,@data
      mov ds,ax
      
      ;display of "?"
      
      mov ah,2
      mov dl,"?"
      int 21h 
      
      ;prompt
      
      mov ah,9
      lea dx,m1
      int 21h
      
      ;reading three initials
      
      mov ah,1
      int 21h
      mov bl,al
      
      mov ah,1
      int 21h
      mov bh,al
      
      mov ah,1
      int 21h
      mov ch,al
      
      mov ah,2
      mov dl,0dh
      int 21h
      mov dl,0ah
      int 21h
      
      
      ;display of 11x11 solid box of asterisks
      
      mov ah,9
      lea dx,asterisks
      
      int 21h              ;display the asterisks 5 times
      int 21h
      int 21h
      int 21h
      int 21h
      
      mov asterisks+4, bl      ;place the three initial at the middle of the asterisks
      mov asterisks+5, bh
      mov asterisks+6, ch
      
      int 21h
      
      mov asterisks+4, "*"     ;place "*" at the positions
      mov asterisks+5, "*"
      mov asterisks+6, "*"
      
      int 21h             ;display the asterisks 5 times
      int 21h
      int 21h
      int 21h
      int 21h 
      
      
      ;beep the computer
      
      mov ah,2
      mov dl,7h
      int 21h
       
      ;dos exit 
      mov ah,4ch
      int 21h
           
      
    
    main endp
end main

ret




