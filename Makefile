# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fnochiza <fnochiza@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/17 14:24:38 by mcherrie          #+#    #+#              #
#    Updated: 2023/03/16 15:04:58 by fnochiza         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

OBJS	=	$(SRC:%.c=%.o)

HDR	=	include/minishell.h

NAME	=	minishell

FLAGS = -Werror -Wall -Wextra

SRC			=	src/z_mini_cd.c \
				src/z_mini_pwd.c \
				src/z_mini_env.c \
				src/z_mini_init.c \
				src/z_mini_free.c \
				src/z_mini_exit.c \
				src/z_mini_main.c \
				src/z_mini_echo.c \
				src/z_mini_check.c \
				src/z_mini_pipex.c \
				src/z_mini_unset.c \
				src/z_mini_count.c \
				src/z_mini_signal.c \
				src/z_mini_export.c \
				src/z_mini_struct.c \
				src/z_mini_utils1.c \
				src/z_mini_utils2.c \
				src/z_mini_utils3.c \
				src/z_mini_utils4.c \
				src/z_mini_execute.c \
				src/z_mini_heredoc.c \
				src/z_mini_ft_atoi.c \
				src/z_mini_cmd_args.c \
				src/z_mini_ft_split.c \
				src/z_mini_redirect.c \
				src/z_mini_lst_utils.c \
				src/z_mini_exec_utils.c \
				src/z_mini_pipe_utils.c \
				src/z_mini_parse_utils.c \
				src/z_mini_split_words.c \
				src/z_mini_struct_utils.c \
				src/z_mini_builtin_utils.c \
				src/z_mini_special_simbols.c

RDLN		=	-lreadline -L ~/.brew/Cellar/readline/8.1.2/lib \
				-I~/.brew/Cellar/readline/8.1.2/include

all		:  $(NAME)

%.o	:	%.c  $(HDR) Makefile
	cc $(FLAGS) -I$(shell brew --prefix readline)/include -c $< -o $@ -I $(HDR)

${NAME}: $(OBJS) $(HDR) Makefile
	${CC} ${FLAGS} -g ${OBJS} $(RDLN) -o ${NAME}

clean	:
	rm -rf src/*.o

fclean	:	clean
	rm -rf $(NAME) ${OBJS}

e	:	fclean all
		rm -rf src/*.o

re	:	fclean all

.PHONY	: all clean fclean re libft