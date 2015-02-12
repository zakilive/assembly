.model small
.stack 100h
.code
main proc

 mov cx,0
 mov ah,2
 mov dl,'*'
 mov cx,80
 
 zaki:
 int 21h
 loop zaki 
 
 mov ah,4ch
 int 21h
 
 main endp
 end main