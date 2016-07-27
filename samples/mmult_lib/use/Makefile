CC = sds++ -sds-pf zc702

.PHONY: all clean apfclean

all: mmult.elf

mmult.o: mmult.cpp
	${CC} -c -I./include $^ -o $@

mmult.elf: mmult.o
	${CC} $^ -L./lib -lmmult -o $@

clean:
	${RM} -rf mmult.elf mmult.o

apfclean: clean
	${RM} -rf _sds sd_card mmult.elf.bit