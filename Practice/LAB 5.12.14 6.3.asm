.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AL,68
    MOV BL,65
    
    CMP AL,BL
    JG D1
    JMP D2
    
    D1:
    MOV AH,2
    MOV DL,AL
    INT 21H
    JMP EXIT
    
    D2:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H 
    
    
    
    
    MAIN ENDP
END MAIN