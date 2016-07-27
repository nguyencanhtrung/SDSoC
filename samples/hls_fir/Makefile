all:
	sds++ -c -sds-hw cpp_FIR cpp_FIR.cpp -sds-end -sds-pf zc702 cpp_FIR.cpp
	sds++ -c -sds-pf zc702 cpp_FIR_test.cpp
	sds++ -sds-pf zc702 cpp_FIR.o cpp_FIR_test.o -o cpp_FIR_test.elf
	cp result.golden.dat sd_card/

clean:
	rm -rf cpp_FIR.o cpp_FIR_test.o cpp_FIR_test.elf cpp_FIR_test.elf.bit
	rm -rf _sds sd_card
