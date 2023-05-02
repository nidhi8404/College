.model small
.stack 100h

.data
    ; The unpacked code to pack
    unpacked db 0B8h, 02h, 00h, 00h, 00h ; MOV AX, 2
             db 3Ch, 01h, 00h             ; CMP AL, 1
             db 75h, 02h                  ; JNZ label
             db 40h                       ; INC AX
             db 90h                       ; NOP
    ; The packed code buffer
    packed   db 1024 dup (0)

.code
    mov ax, @data
    mov ds, ax

    ; Load the unpacked code address in BX
    lea bx, unpacked
    ; Load the packed code address in SI
    lea si, packed

    ; Loop through the unpacked code and pack it
pack_loop:
    ; Check for MOV opcode (B8h)
    cmp byte ptr [bx], 0B8h
    jne not_mov
    ; Copy the MOV opcode
    mov al, [bx]
    mov [si], al
    ; Copy the immediate operand
    mov ax, [bx+1]
    mov [si+1], al
    mov [si+2], ah
    ; Increment the packed code pointer by 3 bytes
    add si, 3
    ; Increment the unpacked code pointer by 3 bytes
    add bx, 3
    jmp next_opcode

not_mov:
    ; Check for CMP opcode (3Ch)
    cmp byte ptr [bx], 3Ch
    jne not_cmp
    ; Copy the CMP opcode
    mov al, [bx]
    mov [si], al
    ; Copy the immediate operand
    mov al, [bx+1]
    mov [si+1], al
    ; Increment the packed code pointer by 2 bytes
    add si, 2
    ; Increment the unpacked code pointer by 2 bytes
    add bx, 2
    jmp next_opcode

not_cmp:
    ; Check for JNZ opcode (75h)
    cmp byte ptr [bx], 75h
    jne not_jnz
    ; Copy the JNZ opcode
    mov al, [bx]
    mov [si], al
    ; Copy the relative offset
    mov al, [bx+1]
    add al, 2
    mov [si+1], al
    ; Increment the packed code pointer by 2 bytes
    add si, 2
    ; Increment the unpacked code pointer by 2 bytes
    add bx, 2
    jmp next_opcode

not_jnz:
    ; Check for INC opcode (40h)
    cmp byte ptr [bx], 40h
    jne not_inc
    ; Copy the INC opcode
    mov al, [bx]
    mov [si], al
    ; Increment the packed code pointer by 1 byte
    inc si
    ; Increment the unpacked code pointer by 1 byte
    inc bx
    jmp next_opcode

not_inc:
    ; Check for NOP opcode (90h)
    cmp byte ptr [bx], 90h
    jne invalid_opcode
    ; Copy the NOP opcode
    mov al, [bx]
    mov [si], al
    ; Increment the packed code pointer by 1 byte
    inc si
    ; Increment the unpacked code pointer by 1 byte
    inc bx
    jmp next_opcode

