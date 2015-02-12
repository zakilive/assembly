
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
                    
.MODEL SMALL
.STACK 100H
.DATA

CR EQU 0DH
LF EQU 0AH

MSG1 DB 'ENTER A LOWER CASE LETTER: $ '
MSG2 DB 0DH,0AH,'IN UPPER CASE IT IS: '
CHAR DB ?,'$'
.CODE
MAIN PROC
    ;initialize DS
    MOV AX,@DATA                     ;get data segment
    MOV DS,AX                        ;initialize DS
    
    ;PRINT USER PROMPT
    LEA DX,MSG1                      ;get first message
    MOV AH,9                         ;display string function
    INT 21H                          ;display first messgae
    
    ;INPUT A CHARACTER AND CONVERT TO UPPER CASE
    MOV AH,1                         ;read character function
    INT 21H                          ;read a small letter into AL
    SUB AL,20H                       ;convert it to uppercase
    MOV CHAR,AL                      ;and store it
    
    ;DISPLAY ON THE NEXT LINE        
    LEA DX,MSG2                      ;get second message
    MOV AH,9                         ;display string function
    INT 21H                          ;display message and upper case
                                     ;letter in front
    ;DOS EXIT
    MOV AH,4CH                       ;DOS exit function
    INT 21H                          ;DOS exit
    
    MAIN ENDP
END MAIN


ret




