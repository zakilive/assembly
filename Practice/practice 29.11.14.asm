
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
m1 db "Enter five initial:$"
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
mov bh,al

mov ah,1
int 21h
mov cl,al

mov ah,1
int 21h
mov ch,al

mov ah,1
int 21h
mov dh,al

mov ah,2
mov dl,0dh
int 21h
mov al,0ah
int 21h     

                  
mov ah,2
mov dl,bl
int 21h

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h 

mov ah,2
mov dl,bh
int 21h
        
        
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h 
        
mov ah,2
mov dl,cl
int 21h
           
           
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h 

           
mov ah,2
mov dl,ch
int 21h
            
            
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h 

            
mov ah,2
mov dl,dh
int 21h

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h 


mov ah,4ch
int 21h


main endp
end main


ret




