section .text
	global _ft_memset

loop:
	cmp rdx, 0
	je finish
	mov [rdi], rsi
	inc rdi
	dec rdx
	jmp loop

ft_memset:
	mov rax, rdi
	jmp loop	

finish: 
	ret		
