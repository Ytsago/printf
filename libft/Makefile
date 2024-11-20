CFLAGS = -Wall -Wextra -Werror
CC = cc
AR = ar
ARFLAG = -rcs

GREEN  = \033[32m
YELLOW = \033[33m
BLUE   = \033[34m
RED    = \033[31m
RESET  = \033[0m

LIBC =	ft_isdigit.c ft_isalpha.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_tolower.c \
		ft_toupper.c ft_bzero.c ft_memset.c ft_memcpy.c ft_memmove.c ft_memchr.c \
		ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strncmp.c ft_strchr.c \
		ft_strrchr.c ft_strnstr.c ft_strdup.c ft_calloc.c ft_atoi.c 

ADDITIONAL =	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c \
				ft_substr.c ft_strtrim.c ft_striteri.c ft_strmapi.c ft_strjoin.c ft_split.c 

BONUSES = 	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstmap_bonus.c \
			ft_lstiter_bonus.c ft_putnbr_base.c\

INC = libft.h

SRCS = $(LIBC) $(ADDITIONAL)

BSRCS = $(SRCS) $(BONUSES)

OBJDIR = .Obj

OBJS = $(SRCS:%.c=$(OBJDIR)/%.o)

BOBJS = $(BSRCS:%.c=$(OBJDIR)/%.o)

NAME = libft.a

all: $(NAME)
	

$(NAME) : $(OBJS) 
	@echo "$(YELLOW)Creating  library : $(RED)$(NAME)...$(RESET)"
	@$(AR) $(ARFLAG) $@ $? && echo "$(GREEN)$(NAME) created successfully !$(RESET)"
	

bonus: 
	@$(MAKE) --no-print-directory OBJS="$(BOBJS)"


$(OBJDIR)/%.o: %.c $(INC) | $(OBJDIR) msg
	@$(CC) -c $(CFLAGS) $< -o $@

$(OBJDIR):
	@mkdir -p $(OBJDIR)
	@echo "$(YELLOW)Compiling...$(RESET)"

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re all bonus msg
