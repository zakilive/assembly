
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter five initial : $"

.CODE
MAIN PROC
    
    MOV AX,@DATA     ;INITIALIZE DATA SEGMENT
    MOV DS,AX
                                      
    
    ;DISPLAY MESSAGE PROMPT
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    
    ;TAKING INPUT
    
    MOV AH,1         
    INT 21H    
    MOV BL,AL
    
    
    MOV AH,1
    INT 21H     
    MOV CL,AL 
    
    
    MOV AH,1
    INT 21H    
    MOV CH,AL
    
    
    MOV AH,1
    INT 21H    
    MOV BH,AL 
    
    MOV AH,1
    INT 21H
    MOV DH,AL
    
    
    
    MOV AH,2
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    MOV DL,0AH ;LINE FEED
    INT 21H
    
    
    ;DISPLAY
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    MOV AH,2
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    MOV DL,0AH ;LINE FEED
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MOV AH,2
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    MOV DL,0AH ;LINE FEED
    INT 21H
    
    
    MOV AH,2
    MOV DL,CH
    INT 21H   
    
    MOV AH,2
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    MOV DL,0AH ;LINE FEED
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H   
    
    MOV AH,2
    MOV DL,0DH ;CARRIAGE RETURN
    INT 21H
    MOV DL,0AH ;LINE FEED
    INT 21H
    
    MOV AH,2
    MOV DL,DH
    INT 21H
    
    MOV AH,4CH       ;DOS EXIT FUNTION
    INT 21H          ;DOS EXIT
    
   
    MAIN ENDP
END MAIN


ret




