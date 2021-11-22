# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: f██████ <f██████@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/08 11:45:53 by f██████           #+#    #+#              #
#    Updated: 2021/11/22 10:34:15 by f██████          ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

OBJS_A = $(SRC_A:.c=.o)
OBJS_B = $(SRC_B:.c=.o)
SRC_A	= $(addprefix $(SRC_DIR)/, \
ft_atoi.c \
ft_bzero.c \
ft_calloc.c \
ft_isalnum.c \
ft_isalpha.c \
ft_isascii.c \
ft_isdigit.c \
ft_isprint.c \
ft_memchr.c \
ft_memcmp.c \
ft_memcpy.c \
ft_memmove.c \
ft_memset.c \
ft_strchr.c \
ft_strdup.c \
ft_strlcat.c \
ft_strlcpy.c \
ft_strlen.c \
ft_strncmp.c \
ft_strnstr.c \
ft_strrchr.c \
ft_tolower.c \
ft_toupper.c \
ft_split.c \
ft_strjoin.c \
ft_substr.c \
ft_strtrim.c \
ft_itoa.c \
ft_strmapi.c \
ft_striteri.c \
ft_putchar_fd.c \
ft_putstr_fd.c \
ft_putendl_fd.c \
ft_putnbr_fd.c \
)
SRC_B	= $(addprefix $(SRC_DIR)/, \
ft_lstnew.c \
ft_lstadd_front.c \
ft_lstsize.c \
ft_lstlast.c \
ft_lstadd_back.c \
ft_lstdelone.c \
ft_lstclear.c \
ft_lstiter.c \
ft_lstmap.c \
)
SRC_DIR	= .
INC_DIR	= .
OUT	= libft.a
CC = gcc
AR = ar
FLAGS = -Wall -Wextra -Werror
HEADER_FILE	= libft.h

all: $(OUT)

$(NAME) : $(OBJS_A) $(AR) $(NAME) $(OBJS_A) ranlib $(NAME)

$(OUT) : $(OBJS_A)
	$(AR) -rcs $(OUT) $(OBJS_A)

%.o: %.c $(HEADER_FILE)
	$(CC) $(FLAGS) -c $< -o $@  -I $(INC_DIR) 

clean:
	rm -f $(OBJS_A) $(OBJS_B)

fclean : clean
	rm -f $(OUT)

re : fclean all

bonus: $(OBJS_A) $(OBJS_B) $(OUT) all
	$(AR) -rcs $(OUT) $(OUT) $(OBJS_B)

.PHONY: all clean fclean re bonus