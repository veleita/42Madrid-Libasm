global ft_strcpy

ft_strcpy:
	mov		rcx, 0

compare:
	cmp		byte[rsi + rcx], 0		; Check if *s1 == \0
	je		return					; If so, return
	mov		dl, byte[rsi + rcx]
	mov		byte[rdi + rcx], dl		; Copy *s1 to *s2
	inc		rcx						; Advance the pointer
	jmp		compare					; Loop

return:
	mov		byte[rdi + rcx], 0		; Set terminating \0 to s2
	mov		rax, rdi				; Return s2
	ret
