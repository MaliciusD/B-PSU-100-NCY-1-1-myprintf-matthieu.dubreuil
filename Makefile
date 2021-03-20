##
## EPITECH PROJECT, 2020
## makefile
## File description:
## makefile
##

NAME	=	libmy.a

RM		=	rm -f

SRCS	=	$(wildcard *.c)

OBJS	=	$(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re