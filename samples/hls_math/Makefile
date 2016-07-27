all:
	sds++ -c -sds-hw my_sqrt my_sqrt.cpp -sds-end -sds-pf zc702 my_sqrt.cpp
	sds++ -c my_sqrt_test.cpp
	sds++ my_sqrt.o my_sqrt_test.o -o my_sqrt_test.elf

clean:
	rm -rf my_sqrt.o my_sqrt_test.o my_sqrt_test.elf my_sqrt_test.elf.bit
	rm -rf _sds sd_card
