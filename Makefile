include config.mk

SRC = kk.c
OBJ = ${SRC:.c=.o}

all: clean options kk

options:
	@echo vis build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} $<

config.h:
	@echo creating $@ from config.def.h
	@cp config.def.h $@

${OBJ}: config.h config.mk

kk: kk.o
	@echo CC -o $@
	@${CC} -o $@ kk.o ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f kk ${OBJ}
