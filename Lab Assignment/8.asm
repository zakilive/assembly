.model small
.stack 100h
.data

prompt  db 'Type a line of text',0dh,0ah,'$'
nocap_msg db 0dh,0ah,'No capitals $'
cap_msg db 0dh,0ah,'First Capital = '
first db '|'
       db ' Last Capital = '
last   db '@ $'

.code
main proc
    
    ;initialize ds
    mov ax,@data
    mov ds,ax    
    
    ;display opening message
    mov ah,9                    ;display string function
    lea dx,prompt               ;get opening message
    int 21h                     ;display it
    ;read and process a line of text
    mov ah,1                    ;read a character function
    int 21h                     ;char in dl
    while_:
    ;while a character is not a carriage return do
    cmp al,0dh                  ;CR?
    je end_while                ;yes,exit
    ;if character is a capital letter
    cmp al,'A'                  ;char >='A'?
    jnge end_if                 ;not a capital letter
    cmp al,'Z'                  ;char <= 'Z'?
    jnle end_if                 ;not a capital letter
    ;then
    ;if character precedes first capital
    cmp al,first                ;char < first capital ?
    jnl check_last              ;no, >=
    ;then first capital = character 
    mov first,al                ;FIRST=char
    ;end_if  
    
    check_last:                 ;char >last capital?
    ;if character follows last capital
    cmp al,last                 ;char > last capital?
    jng end_if                  ;no,<=
    ;then last capital=character
    mov last,al                 ;last = char
    ;end_if
    
    end_if:
    ;read a character
    int 21h                     ;char in AL
    jmp while_                  ;repeat loop
    
    end_while:
    ;display results
    mov ah,9                    ;display string function
    
    ;if no capitals were typed
    cmp first,'|'               ;first '|'
    jne caps                    ;no display results
    
    ;then
    lea dx,nocap_msg            ;no capitals
    jmp display                 
    
    caps:
    lea dx,cap_msg              ;capitals
    
    display:
    int 21h                     ;display message
    
    ;end_if
    
    ;dos exit
    mov ah,4ch
    int 21h
    
    main endp
end main
