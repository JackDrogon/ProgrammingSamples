global start

section .data
msg:    db      "Hello, World!", 10
.len:   equ     $ - msg

section .text
start:
  mov     rax, 0x2000004 ; write
  mov     rdi, 1 ; stdout
  mov     rsi, qword msg
  mov     rdx, msg.len
  syscall

  mov     rax, 0x2000001 ; exit
  mov     rdi, 0
  syscall
