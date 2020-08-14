# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmarti <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/14 15:43:06 by mmarti            #+#    #+#              #
#    Updated: 2020/08/14 19:35:12 by mmarti           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

TEST_NAME = libasm

SRC = ft_isdigit.s ft_strlen.s ft_memset.s ft_bzero.s \
	  ft_memcpy.s ft_strdup.s

CC = gcc

OBJ = $(SRC:.s=.o)

all: $(NAME) $(TEST_NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	nasm -f macho64 $<

clean:
	rm -rf $(OBJ)

$(TEST_NAME): main.c
	$(CC) main.c $(NAME) -o $(TEST_NAME)

fclean: clean
	rm -rf $(NAME) $(TEST_NAME)

re: fclean all
