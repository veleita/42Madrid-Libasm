# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mzomeno- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/16 15:15:13 by mzomeno-          #+#    #+#              #
#    Updated: 2020/08/19 16:53:28 by mzomeno-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libasm.a

CC			= 	nasm
OS			=	$(shell uname)
ifeq ($(OS), Linux)
	FLAGS	= 	-f elf64
endif
ifeq ($(OS), Darwin)
	FLAGS	= 	-f macho64
endif

SRC_FILES	= 	ft_strlen.s \
				ft_read.s \
				ft_strcmp.s \
				ft_strcpy.s \
				ft_write.s \
				ft_strdup.s

OBJ_FILES	=	$(SRC_FILES:.s=.o)

SRC_DIR		=	src/
OBJ_DIR		=	obj/

SRC			=	$(addprefix $(SRC_DIR), $(SRC_FILES))
OBJ			=	$(addprefix $(OBJ_DIR), $(OBJ_FILES))

all:	$(NAME)

$(NAME): $(OBJ_DIR) $(OBJ)
		@ar rcs $(NAME) $(OBJ)

$(OBJ_DIR):
		@mkdir $(OBJ_DIR)

$(OBJ_DIR)%.o: $(SRC_DIR)%.s
		@$(CC) $(FLAGS) $< -o $@

clean:
		@rm -rf $(OBJ_DIR)

fclean: clean
		@rm -rf $(NAME)

re: fclean all

test: all
		@gcc -Libs -lasm main.c $(NAME) && ./a.out
		@rm a.out
