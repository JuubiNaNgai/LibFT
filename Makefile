# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aleite-b <aleite-b@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/09 11:45:38 by aleite-b          #+#    #+#              #
#    Updated: 2023/11/09 14:44:06 by aleite-b         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
FLAGS = -Wall -Wextra -Werror
AR = ar -rcs
RM = rm -f

SOURCES = ft_atoi.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_itoa.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_split.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_tolower.c \
		ft_toupper.c

BONUS_SOURCES = ft_lstnew_bonus.c \
	  		ft_lstadd_front_bonus.c \
	  		ft_lstsize_bonus.c \
	  		ft_lstlast_bonus.c \
	  		ft_lstadd_back_bonus.c \
	  		ft_lstdelone_bonus.c \
	  		ft_lstclear_bonus.c \
	  		ft_lstiter_bonus.c \
	  		ft_lstmap_bonus.c

OBJECTS = $(SOURCES:.c=.o)
BONUS_OBJECTS = $(BONUS_SOURCES:.c=.o)

HEADER = libft.h

.c.o: $(SRCS)
	$(CC) $(FLAGS) -I. -c $< -o $(<:.c=.o)

$(NAME): $(OBJECTS) $(HEADER)
	$(AR) $(NAME) $(OBJECTS)

all: $(NAME)

bonus: $(OBJECTS) $(BONUS_OBJECTS) $(HEADER)
	$(AR) $(NAME) $(OBJECTS) $(BONUS_OBJECTS)

re: clean fclean all

clean:
	$(RM) $(OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	$(RM) $(NAME)


.PHONY: all clean fclean re bonus