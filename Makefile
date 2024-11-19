CFLAGS = -Wall -Wextra -Werror
CC = cc
AR = ar
ARFLAG = -rcs

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
	$(AR) x $(LIB)
	$(AR) $(ARFLAG) $@ $< *.o
	rm -f *.o

$(OBJDIR)%.o: $(SRCDIR)%.c | $(OBJDIR)
	$(CC) -c $(CFLAGS) -I$(INC) -I $(LIB_D) $< -o $@

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(LIB): FORCE
	@$(MAKE) bonus -C $(LIB_D) --no-print-directory

clean:
	rm -rf $(OBJDIR)
	$(MAKE) $@ -C $(LIB_D) --no-print-directory

fclean: clean
	rm -f $(NAME)
	@$(MAKE) $@ -C $(LIB_D) --no-print-directory

re: fclean all

FORCE:


.PHONY: clean fclean re all bonus