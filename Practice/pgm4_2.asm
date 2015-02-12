
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'HELLO!$'
.CODE

MAIN PROC
    ;INIITIALIZE DS
    MOV AX,@DATA
    MOV DS,AX       ;initialize DS
    
    
    
    ;display messsage
    
    LEA DX,MSG          ;get message
    MOV AH,9            ;display string function OUTPUT
    INT 21H             ;display message
    
    ;return to DOS
    MOV AH,4CH
    INT 21H             ;DOS EXIT
    
    MAIN ENDP

    
    
    
    
    

ret




