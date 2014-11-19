# kk version
VERSION = devel

# Customize below to fit your system
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

CFLAGS += -std=c99 -DVERSION=\"${VERSION}\" -DNDEBUG -D_POSIX_C_SOURCE=200809L -D_XOPEN_SOURCE=700

DEBUG_CFLAGS = ${CFLAGS} -UNDEBUG -O0 -g -ggdb -Wall -Wextra -Wno-missing-field-initializers -Wno-unused-parameter

CC = cc
