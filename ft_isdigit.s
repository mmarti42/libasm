segment .text
	global _ft_isdigit

not_digit:
	mov eax, 0
	ret

_ft_isdigit:
	cmp edi, 47
	jl not_digit
	cmp edi, 57
	jg not_digit
	mov eax, 1
	ret
