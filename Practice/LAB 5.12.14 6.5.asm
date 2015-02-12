.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    CMP BL,'1'
    JE ODD
    CMP BL,'3'
    JE ODD
    CMP BL,'2'
    JE EVEN
    CMP BL,'4'
    JE EVEN
    JMP EXIT
    
    ODD:
    MOV AH,2
    MOV DL,'O'
    INT 21H
    JMP EXIT
    
    EVEN:
    MOV AH,2
    MOV DL,'E'
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H 
    
    
    
    
    MAIN ENDP
END MAIN