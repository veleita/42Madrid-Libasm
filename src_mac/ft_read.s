extern	___error
global	_ft_read

_ft_read:
	mov		rax, 0x2000003
	syscall
	cmp		rax, 0
	jl		error				;	If syscall returns a negative value -> error
	ret							;	Syscall returns the number of bytes read

error:
	neg		rax					;	Rax stores the negative value of the error code
	mov		rdx, rax			;	Rdx saves a copy of the error code
	call	___error			;	Rax is now storing the direction of errno
	mov		[rax], rdx			;	The error code is stored in errno
	mov		rax, -1
	ret							;	Return -1
