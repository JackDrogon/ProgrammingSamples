.data
	msg: .string "Hello, World!\n"
	len = . - msg - 1

.text
.global _start
_start:
	movq $1, %rax
	movq $1, %rdi
	movq $msg, %rsi
	movq $len, %rdx
	syscall

	movq $60, %rax
	mov $0, %rdi
	syscall
