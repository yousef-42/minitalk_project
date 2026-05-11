# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yasmail <yasmail@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/05/04 15:15:35 by yasmail           #+#    #+#              #
#    Updated: 2026/05/04 17:28:14 by yasmail          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_SERVER = server
NAME_CLIENT = client

CC = cc
CFLAGS = -Wall -Werror -Wextra

PRINTF_DIR = ./ft_printf
PRINTF = $(PRINTF_DIR)/libftprintf.a

SRCS_SERVER = server.c
SRCS_CLIENT = client.c

OBJS_SERVER = $(SRCS_SERVER:.c=.o)
OBJS_CLIENT = $(SRCS_CLIENT:.c=.o)

SRCS_SERVER_BONUS = server_bonus.c
SRCS_CLIENT_BONUS = client_bonus.c

OBJS_SERVER_BONUS = $(SRCS_SERVER_BONUS:.c=.o)
OBJS_CLIENT_BONUS = $(SRCS_CLIENT_BONUS:.c=.o)


all: $(NAME_SERVER) $(NAME_CLIENT)

$(PRINTF):
	@make -C $(PRINTF_DIR)

$(NAME_SERVER): $(OBJS_SERVER) $(PRINTF)
	$(CC) $(CFLAGS) $(OBJS_SERVER) $(PRINTF) -o $(NAME_SERVER)

$(NAME_CLIENT): $(OBJS_CLIENT) $(PRINTF)
	$(CC) $(CFLAGS) $(OBJS_CLIENT) $(PRINTF) -o $(NAME_CLIENT)

bonus: $(OBJS_SERVER_BONUS) $(OBJS_CLIENT_BONUS) $(PRINTF)
	$(CC) $(CFLAGS) $(OBJS_SERVER_BONUS) $(PRINTF) -o $(NAME_SERVER)
	$(CC) $(CFLAGS) $(OBJS_CLIENT_BONUS) $(PRINTF) -o $(NAME_CLIENT)


clean:
	rm -f $(OBJS_SERVER) $(OBJS_CLIENT)
	rm -f $(OBJS_SERVER_BONUS) $(OBJS_CLIENT_BONUS)
	make -C $(PRINTF_DIR) clean

fclean: clean
	rm -f $(NAME_SERVER) $(NAME_CLIENT)
	make -C $(PRINTF_DIR) fclean

re: fclean all

.PHONY: all bonus clean fclean re