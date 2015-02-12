
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AL,-67
    CMP AL,0
    JNL END_IF
    NEG AL
    
    END_IF:
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN


ret




