# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mzomeno- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/16 15:15:13 by mzomeno-          #+#    #+#              #
#    Updated: 2020/08/19 13:18:36 by mzomeno-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libasm.a

CC			= 	nasm
FLAGS		= 	-f elf64

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
		@gcc main.c $(NAME) && ./a.out
		@rm a.out
