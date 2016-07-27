CC = sdscc -sds-pf zc702

.PHONY: all clean ultraclean

all: fir.elf

main.o: main.c
	${CC} -c -I./include $< -o $@

fir.elf: main.o
	${CC} main.o -L./lib/hw -lfir -lm -o $@

clean:
	${RM} -rf fir.elf main.o

ultraclean: clean
	${RM} -rf _sds sd_card fir.elf.bit
