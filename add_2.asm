;Addition 2
.model small
.stack 100h
.data

a db 10,13,'Input first digit $' ; Display message to input first digit
b db 10,13,'Input second digit $' ; Display message to input second digit
c db 10,13,'Result $' ; Display message for the result

.code

    main proc
        mov ax,@data ; Move the data segment address to AX register
        mov ds,ax ; Move the value in AX to the DS register

        mov ah,9 ; Set the value of AH to 9 to prepare for displaying a string
        lea dx,a ; Load the offset address of string 'a' into DX
        int 21h ; Call the DOS interrupt 21h to display the string

        mov ah,1 ; Set the value of AH to 1 to prepare for reading a character from the keyboard
        int 21h ; Call the DOS interrupt 21h to read a character from the keyboard
        mov bl,al ; Move the input character to the BL register

        mov ah,9 ; Set the value of AH to 9 to prepare for displaying a string
        lea dx,b ; Load the offset address of string 'b' into DX
        int 21h ; Call the DOS interrupt 21h to display the string

        mov ah,1 ; Set the value of AH to 1 to prepare for reading a character from the keyboard
        int 21h ; Call the DOS interrupt 21h to read a character from the keyboard
        mov bh,al ; Move the input character to the BH register

        mov ah,9 ; Set the value of AH to 9 to prepare for displaying a string
        lea dx,c ; Load the offset address of string 'c' into DX
        int 21h ; Call the DOS interrupt 21h to display the string

        add bl,bh ; Add the values in BL and BH registers
        sub bl,48 ; Subtract 48 from BL to convert the sum to ASCII character code

        mov ah,2 ; Set the value of AH to 2 to prepare for displaying a character
        mov dl,bl ; Move the character to be displayed to the DL register
        int 21h ; Call the DOS interrupt 21h to display the character

        exit:
        mov ah,4ch ; Set the value of AH to 4Ch to prepare for program termination
        int 21h ; Call the DOS interrupt 21h to terminate the program

    main endp
end main
