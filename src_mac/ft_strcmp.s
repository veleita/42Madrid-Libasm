global	_ft_strcmp

_ft_strcmp:
	mov		rbx, 0
	mov 	rax, 0
	mov		cx, 0
	mov		dx, 0

compare:
	mov		cl, [rdi+rbx]	;	Get char on s1
	mov		dl, [rsi+rbx]	;	Get char on s2
	or		cl, cl
	jz		return			;	Finish if char == \0
	or		dl, dl
	jz		return			;	Finish if char == \0
	cmp		cl, dl			;	Compare both chars
	jne		return			;	Finish if they are not equal
	inc		rbx				;	Advance the pointer
	jmp		compare			;	Loop

return:
	sub		cx, dx
	jl		negative		;	If *s1 > *s2 we return -1
	ja		positive		;	If *s1 < *s2 we return 1
	jmp		equal			;	If s1 == s2 we return 0

negative:
	mov		rax, -1
	ret

positive:
	mov		ax, cx
	ret

equal:
	mov		rax, 0
	ret
