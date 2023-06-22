;Hello World Code (Another way)

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100h  
.DATA

.CODE                  
    MAIN PROC 

        PRINTN 'HELLO WORLD!'
        PRINT 'HELLO BD!'
        INT 21H
       
    MOV AH, 4CH
    INT 21H
   
    MAIN ENDP
END MAIN