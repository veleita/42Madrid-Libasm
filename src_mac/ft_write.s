extern	___error
global	_ft_write

_ft_write:
	mov 	rax, 1
	syscall
	cmp		rax, 0
	jl		error
	ret

error:
	neg		rax
	mov		rdx, rax
	call	__error
	mov		[rax], rdx
	mov		rax, -1
	ret
