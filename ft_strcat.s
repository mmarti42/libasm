segment .text
	global _ft_strcat

_ft_strcat:
	mov rax, rdi

get_str_end:
	mov bh, [rdi]
	cmp bh, 0
	je loop
	inc rdi
	jmp get_str_end
	
loop:
	mov bh, [rsi]
	cmp bh, 0
	je finishc
	mov [rdi], bh
	inc rdi
	inc rsi
	jmp loop

finishc:
	mov bh, 0
	mov [rdi], bh
	ret
