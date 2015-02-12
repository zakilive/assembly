.model small
.stack 100h
.code    

main proc
mov cx,ax
cmp bx,cx
jl then
jmp else
jmp end_if

then:
mov ax,0
jmp end_if

else:
cmp bx,cx
jl  then_1

then_1:
mov bx,0
jmp else_1

else_1:
mov cx,0
jmp end_if

end_if:   
mov ah,4ch
int 21h

main endp
end main




