## Program to count number of 1’s and 0’s in a given 8 bit number
```
.model small
.data
n1 db 31h
zeros db 1 dup(0)
ones db 1 dup(0)
.code
Start:
mov ax,@data
mov ds,ax
mov cl,08h
mov ah,00h
mov al,n1
mov dx,0000h
up: rcl al,01H
JC next
inc dl
jmp down
next: inc dh
down: loop up
mov zeros, dh
mov ones,dl
int 03H
end Start
```

## Program to find even and odd numbers from a given list
```
.model small
.data
array db 12h, 23h, 26h, 63h, 25h, 36h, 2fh, 33h, 10h, 35h
.code
start: MOV ax,@data
MOV ds,ax
MOV cl,10
MOV SI,2000h
MOV DI,2008h
LEA BP,array
back: MOV AL,DS:[BP]
MOV BL,AL
AND AL,01H
JZ next
MOV [DI],bl
INC DI
JMP skip
next: MOV [SI],bl
INC SI
skip: INC BP
DEC CL
JNZ back
int 03H
end start
```

## Program to move set of numbers from one memory block to another
```
.model small
.code
start:
MOV SI,2000h
MOV DI,4000h
MOV CL,05h
LOOP1: MOV bl,[SI]
MOV [DI],bl
INC SI
INC DI
DEC CL
JNZ LOOP1
int 03h
end start
```

## Factorial
```
.model small
.data
num dw 05h
.code
MOV ax, @data ; initialize the data segment
MOV ds, ax
MOV ax, 01 ; initialize ax = 1
MOV bx, num ; load the number in cx
CALL fact ; call procedure
MOV di, ax ; store lsb of result in di
MOV bp, 2 ; initialize count for no of times display is called
MOV bx, dx ; store msb of result in reg bx
MOV bx, di ; store lsb of result in bx
DEC bp ; decrement bp
MOV ah,4ch
Int 21h
Fact proc near ;function for finding the factorial
CMP bx,01 ;if bx=1
JZ l11 ;if yes ax=1
l12: MUL bx ;find factorial
DEC bx ; decrement bx
CMP bx,01 ;multiply bx=1
JNE l12
RET
l11:MOV ax,01 ;initialize ax=1
RET ;return to called program
fact ENDP ;end procedure
END ;end program
```

## Palindrome
```
MODEL SMALL
.STACK 100H
.DATA ; The string to be printed
STRING DB 'Madam', '$'
STRING1 DB 'String is palindrome', '$'
STRING2 DB 'String is not palindrome', '$'
.CODE
MAIN PROC FAR
MOV AX, @DATA
MOV DS, AX
; check if the string is;
;palindrome or not
CALL Palindrome
;interrupt to exit
MOV AH, 4CH
INT 21H
MAIN ENDP
Palindrome PROC
; load the starting address
; of the string
MOV SI, OFFSET STRING
; traverse to the end of;
;the string
LOOP1 :
MOV AX, [SI]
CMP AL, '$'
JE LABEL1
INC SI
JMP LOOP1
```

## Unpackbcd
```
.model small
.data
a db 13H
.code
 mov ax, @data ; Initialize data section
 mov ds, ax
 mov al, a ; Load number1 in al
 and al, 0f0h ; mask lower nibble
 mov cl, 04h
 rcr al, cl ; rotate it 4 times to right to make it 09h
 mov bh, al ; store result in bh
 call disp ; display the upper nibble
 mov al, a ; Load number1 in al
 and al, 0fh ; mask upper nibble
 mov bh, al ; store result in bh
 call disp ; display the lower nibble
 mov ah, 4cH ; Terminate Program
 int 21H
disp proc near
 mov ch, 02h ; Count of digits to be displayed
 mov cl, 04h ; Count to roll by 4 bits
l2: rol bh, cl ; roll bl so that msb comes to lsb
 mov dl, bh ; load dl with data to be displayed
 and dl, 0fH ; get only lsb
 cmp dl, 09 ; check if digit is 0-9 or letter A-F
 jbe l4
 add dl, 07 ; if letter add 37H else only add 30H
l4: add dl, 30H
 mov ah, 02 ; Function 2 under INT 21H (Display character)
 int 21H
 dec ch ; Decrement Count
 jnz l2
 mov ah, 02h
 mov dl, ' '
 int 21h
 endp
ret
 end
 ```

## 16BCDADD
```
.model small
.data
a dw 3629H
b dw 4738H
.code
mov ax, @data ; Initialize data section
mov ds, ax
mov ax, a ; Load number1 in ax
mov bx, b ; Load number2 in bx
add al, bl; add lower two digits. Result in al
daa ; adjust result to valid bcd
mov bl, al ; store result in bl
adc ah, bh ; add upper two digits. Result in ah
mov al, ah; al=ah as daa works on al only
daa ; adjust result to valid BCD
mov bh, al; store result in bh
mov ch, 04h ; Count of digits to be displayed
mov cl, 04h ; Count to roll by 4 bits cl, 04h
l2:rol bx, cl ; roll bl so that msb comes to lsb
mov dl, bl ; load dl with data to be displayed
and dl, 0fH ; get only lsb dl, 0fH
cmp dl, 09 ; check if digit is 0-9 or letter A-F
jbe l4
add dl, 07 ; if letter add 37H else only add
l4: add dl, 30H
mov ah, 02 ; Function 2 under INT 21H (Display character)
int 21H
dec ch ; Decrement Count
jnz l2
mov ah, 4cH ; T ; Terminate Program
int 21H
end
```
 
