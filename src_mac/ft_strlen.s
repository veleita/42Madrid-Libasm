global _ft_strlen

_ft_strlen:
	mov	rax, 0

count:
	cmp	byte[rdi+rax], 0	;	Check if the pointed byte == \0
	je	return				;	If so, return counter
	inc	rax					;	Increment counter
	jmp	count				;	Loop

return:
	ret
