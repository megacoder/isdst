PREFIX	=/opt
BINDIR	=${PREFIX}/bin

CC	=gcc
CFLAGS	=-Os -g
LDFLAGS	=
LDLIBS	=

all::	isdst

check::	isdst
	./isdst

clean::
	${RM} *.o a.out core* lint tags

distclean clobber:: clean
	${RM} isdst

install:: isdst
	install -D -c -s isdst ${BINDIR}/isdst

uninstall::
	${RM} ${BINDIR}/isdst
