;infinity Loop In Assembly Language (8086)

INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100h  
.DATA
         
.CODE                  
    MAIN PROC  
       
        JMP SECOND_BLOCK
       
        FIRST_BLOCK:
        PRINTN 'FIRST'
       
        SECOND_BLOCK:
        PRINTN 'SECOND'
       
        JMP FIRST_BLOCK
       
    MOV AH, 4CH
    INT 21H
   
    MAIN ENDP
END MAIN