extern	_ft_strlen
extern	_malloc
extern	_ft_strcpy

global	_ft_strdup

_ft_strdup:
	call	_ft_strlen		;	Rax stores the length of the string passed as 1st arg
	inc		rax				;	Length +1 to store the \0 char
	push	rdi				;	Save the first argument in stack
	mov		rdi, rax		;	Passed the length in rax to the 1st argument register (rdi)
	call	_malloc			;	Call malloc with the length of the string as argument
	cmp		rax, 0
	jle		error			;	If malloc fails (rax == 0) return 0
	pop		rdi				;	Restore previous value of rdi (string)
	mov		rsi, rdi		;	Copy string to rsi (2nd argument)
	mov		rdi, rax		;	Copy allocated space to rdi (first argument)
	call	_ft_strcpy		;	Call strcpy with allocated space as dst and string as src
	ret						;	Return copied string (stored in rax by ft_strcpy)

error:
	mov		rax, 0
	ret
