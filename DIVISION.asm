;division

.MODEL SMALL
.STACK 100H
.DATA
a db ?
b db ?
c db 10,13,'Enter first number: $'  
d db 10,13,'Enter second number: $' 
e db 10,13,'The division is: $'
f db 10,13,'The remainder is: $'


.CODE

MAIN PROC
    
        MOV AX,@DATA    ;INITIALIZATION DATA SEGMENT
        MOV DS,AX
        
        
        MOV AH,9
        LEA DX,c        ;PRINT C
        INT 21H
        
        
        MOV AH,1
        INT 21H
        SUB AL,48
        MOV a,AL
        
        
        MOV AH,9        ;PRINT D
        LEA DX,d
        INT 21H
        
        MOV AH,1
        INT 21H
        SUB AL,48
        MOV b,AL   
        
        
        MOV AH,9
        LEA DX,e        ;PRINT E
        INT 21H
                
        
        MOV AL,a       ;AL=A/B
        xor AH,AH     ;Clear AH before division
        div b
        
        MOV AH,2
        MOV DL,AL        ;PRINT OUTPUT (quotient)
        add DL,48
        INT 21H
        
        
        MOV AH,9
        LEA DX,f        ;PRINT F
        INT 21H
                
        
        MOV AL,AH        ;AL=remainder
        MOV DL,AL        ;PRINT OUTPUT (remainder)
        ADD DL,48
        INT 21H
        
        
        
    
  MOV AH,4CH
  INT 21H         ;EXIT
  
MAIN ENDP
END MAIN
