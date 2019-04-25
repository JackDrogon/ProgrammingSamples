global start

section .text
start:
  mov $0x2000004, %rax; write
  mov $1, %rdi; stdout
  mov     rdi, 1 ; stdout
  mov     rsi, qword msg
  mov     rdx, msg.len
  syscall

  mov     rax, 0x2000001 ; exit
  mov     rdi, 0
  syscall

section .data
msg:    db      "Hello, World!", 10
.len:   equ     $ - msg
