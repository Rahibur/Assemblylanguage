 ;output:
 ;1
 ;4
 ;8


.MODEL SMALL ;MEMORY DECLARATION SEGMENT
.STACK 100H

.DATA ;DATA SEGMENT  


    NEWLINE DB 10 
    carriageReturn db  13
    NUM DB 49
    NUM2 DB 50
    NUM3 DB 52
 
      
.CODE ;CODE SEGMENT
    
    MAIN PROC 
                
        
        MOV AX,@DATA 
        MOV DS,AX  
        MOV AH,2
        
        
        MOV DL,NUM 
        INT 21H  
      
        MOV DL,NEWLINE 
        INT 21H 
        MOV DL, carriageReturn
        INT 21H
        
        MOV DL,NUM2 
        INT 21H 
     
        MOV DL,NEWLINE  
        INT 21H 
        
        MOV DL, carriageReturn
        INT 21H
        
        MOV DL,NUM3  
        INT 21H
        
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
    
END MAIN
        


































 