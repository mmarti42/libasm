section .text
	global _ft_memset

_ft_memset:
	mov rax, rdi

loop:
	cmp rdx, 0
	je finish
	mov [rdi], sil
	inc rdi
	dec rdx
	jmp loop

finish:
	ret
