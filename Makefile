# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jcobos-d <jcobos-d@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/30 17:10:10 by jcobos-d          #+#    #+#              #
#    Updated: 2022/05/31 13:28:46 by jcobos-d         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	testsmain.c

OBJS	=	${SRCS:.c=.o}

NAME	=	fractol

CFLAGS	=	-Wall -Wextra -Werror

CC		=	gcc

# COLORS

BLACK				=	\033[0;30m
RED					=	\033[0;31m
GREEN				=	\033[0;32m
YELLOW				=	\033[0;33m
BLUE				=	\033[0;34m
MAGENTA				=	\033[0;35m
CYAN				=	\033[0;36m
RESET				=	\033[0m

%.o: %.c
	$(CC) -Wall -Wextra -Werror -Imlx -c $< -o $@

$(NAME):	$(OBJS)
			$(CC) $(OBJS) -Lmlx -lmlx -framework OpenGL -framework AppKit -o $(NAME)

all:		${NAME}

clean:
			@rm -f ${OBJS}
			@echo "${GREEN}Objects cleaned from $(CURDIR) ${RESET}"

fclean:		clean
			@rm -f ${NAME}
			@echo "${GREEN}Binary ${NAME} cleaned${RESET}"

