.model small
.stack 100h
.data

.code
main proc

mov ax,5
add ax,4
mov b,ax

mov dl,b
int 21h
    
    
    
    main endp
end main