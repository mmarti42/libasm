segment .text
	global _ft_memcpy

_ft_memcpy:
	mov rax, rdi

loop:
	cmp rdx, 0
	je finish
	mov ch, [rsi]
	mov [rdi], ch
	inc rsi
	inc rdi
	dec rdx
	jmp loop

finish:
	ret	
	
