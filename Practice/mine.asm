
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
         
.MODEL SMALL
.STACK 100H
.CODE         
MAIN PROC
    ;PROMPT
    MOV AH,2             ;DISPLAY  CHARACTER FUNCTION
    MOV DL,'?'           ;CHARACTER IS ?
    INT 21H              ;DISPLAY IT
    
    ;TAKING INPUT
    MOV AH,1             ;READ CHARACTER FUNCTION
    INT 21H              ;CHARACTER IN AL
    MOV BL,AL            ;SAVE CHARACTER IN BL
    
    ;NEXT LINE           
    MOV AH,2             ;DISPLAY CHARACTER FUNCTION
    MOV DL,0DH           ;CARRIAGE RETURN
    INT 21H              ;EXECUTE CARRIAGE RETURN  FUNCTION
    MOV DL,0AH           ;LINE FEED
    INT 21H              ;EXECUTE LINE FEED
    
    ;DISPLAY
    MOV DL,BL         ;DISPLAY CHARACTER
    INT 21H           ;DISPLAY IT
         
    ;DOS EXIT     
    MOV AH,4CH            ;DOS EXIT FUNCTION
    INT 21H               ;EXIT DOS
    MAIN ENDP
ret




