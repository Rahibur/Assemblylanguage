;multiplication

.MODEL SMALL
.STACK 100H
.DATA
a db ? ; Define a variable 'a' to store the first number
b db ? ; Define a variable 'b' to store the second number
c db 10,13,'Enter first number: $'  ; Display message to enter the first number
d db 10,13,'Enter second number: $' ; Display message to enter the second number
e db 10,13,'The multiplication is: $' ; Display message for the result

.CODE

MAIN PROC
    
        MOV AX,@DATA    ; Initialize data segment
        MOV DS,AX
        
        
        MOV AH,9
        LEA DX,c        ; Print message 'c'
        INT 21H
        
        
        MOV AH,1
        INT 21H
        SUB AL,48      ; Convert the ASCII value of the entered character to a numeric value
        MOV a,AL       ; Store the numeric value in variable 'a'
        
        
        MOV AH,9        ; Print message 'd'
        LEA DX,d
        INT 21H
        
        MOV AH,1
        INT 21H
        SUB AL,48      ; Convert the ASCII value of the entered character to a numeric value
        MOV b,AL       ; Store the numeric value in variable 'b'
        
        
        MOV AH,9
        LEA DX,e        ; Print message 'e'
        INT 21H
                
        
        MOV AL,a       ; Multiply 'a' and 'b' and store the result in AL register
        MUL b 
        
        MOV AH,2
        MOV DL,AL        ; Print the output
        add DL,48        ; Convert the result to ASCII character code
        INT 21H
        
        
        
    
  MOV AH,4CH
  INT 21H         ; Terminate the program
  
MAIN ENDP
END MAIN
