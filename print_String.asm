;Hello World Code In Assembly Language (8086)


.MODEL SMALL
.STACK 100h  
.DATA 

STR1 DB "Hello World $"
         
.CODE                   
    MAIN PROC  
      
        MOV AX, @DATA
        MOV DS, AX  
       
     
        LEA DX, STR1
        MOV AH, 9
        INT 21H      
   
    MOV AH, 4CH
    INT 21H
   
    MAIN ENDP
END MAIN