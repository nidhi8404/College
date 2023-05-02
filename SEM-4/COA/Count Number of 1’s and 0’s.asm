.model small
.data
n1 db 55h
zeros db 0
ones db 0
outputmsg db 'The number of zeros is $'
outputmsg2 db 'The number of ones is $'
.code
Start:
mov ax, @data
mov ds, ax
mov cl, 08h
mov ah, 00h
mov al, n1
mov dx, 0000h
up:
rcl al, 01H
JC next
inc dl
jmp down
next:
inc dh
down:
loop up

mov al, dh
mov zeros, al
mov al, dl
mov ones, al

; print the results
mov ah, 09h ; DOS function to print a string
mov dx, offset outputmsg ; load offset of the output message
int 21h ; print the output message
mov ah, 02h ; DOS function to print a character
mov dl, zeros ; move the value of zeros to dl
add dl, 30h ; convert the value to ASCII
int 21h ; print the value of zeros
mov ah, 02h ; DOS function to print a character
mov dl, 0dh ; print a carriage return
int 21h ; print the carriage return
mov dl, 0ah ; print a line feed
int 21h ; print the line feed

mov ah, 09h ; DOS function to print a string
mov dx, offset outputmsg2 ; load offset of the output message
int 21h ; print the output message
mov ah, 02h ; DOS function to print a character
mov dl, ones ; move the value of ones to dl
add dl, 30h ; convert the value to ASCII
int 21h ; print the value of ones
mov ah, 02h ; DOS function to print a character
mov dl, 0dh ; print a carriage return
int 21h ; print the carriage return
mov dl, 0ah ; print a line feed
int 21h ; print the line feed

mov ah, 4ch ; DOS function to exit
int 21h ; exit program
end Start
