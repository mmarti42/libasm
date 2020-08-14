segment .text
	global _ft_strlen

_ft_strlen:
	mov rax, rdi

loop:
	mov bh, [rax]
	cmp bh, 0
	je finish
	inc rax
	jmp loop

finish:
	sub rax, rdi
	ret
