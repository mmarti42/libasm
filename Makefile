NAME = libasm.a

TEST_NAME = libasm

SRC = ft_isdigit.s ft_strlen.s ft_memset.s ft_bzero.s \
		  ft_memcpy.s ft_strdup.s ft_strcat.s ft_cat.s

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

$(TEST_NAME): $(OBJ) main.c
	$(CC) main.c -g $(NAME) -o $(TEST_NAME)

fclean: clean
	rm -rf $(NAME) $(TEST_NAME)

re: fclean all
