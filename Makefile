# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmarti <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/14 15:43:06 by mmarti            #+#    #+#              #
#    Updated: 2020/08/14 17:57:01 by mmarti           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

TEST_NAME = libasm

SRC = ft_isdigit.s ft_strlen.s

MAIN = main.c

OBJ = $(SRC:.s=.o)

all: $(NAME) $(test)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	nasm -f macho64 $<

clean:
	rm -rf $(OBJ)

test: $(NAME) main.c
	gcc -Wall -Wextra -Werror main.c $(NAME) -o $(TEST_NAME)

fclean: clean
	rm -rf $(NAME) $(TEST_NAME)

re: fclean all
