CFLAGS = -Wall -Wextra -Werror
CC = cc
AR = ar
ARFLAG = -rcs

GREEN  = \033[32m
YELLOW = \033[33m
BLUE   = \033[34m
RED    = \033[31m
RESET  = \033[0m

FILE = ft_printf.c

LIB_D = libft/

LIB = $(LIB_D)libft.a

SRCDIR = src/

SRCS = $(SRCDIR)$(FILE)

INC = inc/

OBJDIR = .Obj/

OBJS = $(subst $(SRCDIR), $(OBJDIR), $(SRCS:%.c=%.o))

NAME = libftprintf.a

all: $(NAME)

$(NAME) : $(OBJS) $(LIB)
	@echo "$(YELLOW)Creating final product : $(RED)$@...$(RESET)"
	@$(AR) x $(LIB)
	@$(AR) $(ARFLAG) $@ $< *.o && echo "$(GREEN)$@ Created successfully !$(RESET)"
	@rm -f *.o
	

$(OBJDIR)%.o: $(SRCDIR)%.c | $(OBJDIR)
	@$(CC) -c $(CFLAGS) -I$(INC) -I $(LIB_D) $< -o $@

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(LIB): FORCE
	@$(MAKE) bonus -C $(LIB_D) --no-print-directory

clean:
	@echo "$(RED)Deleting object files...$(RESET)"
	@rm -rf $(OBJDIR) && echo "$(GREEN)Done !$(RESET)"
	@$(MAKE) $@ -C $(LIB_D) --no-print-directory
	

fclean: clean
	@echo "$(RED)Deleting executable or library $(NAME)...$(RESET)"
	@rm -f $(NAME) && echo "$(GREEN)Done !$(RESET)"
	@$(MAKE) $@ -C $(LIB_D) --no-print-directory
	

re: fclean all

FORCE:


.PHONY: clean fclean re all bonus