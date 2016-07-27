all:
	sds++ -c -sds-hw cpp_template cpp_template.cpp -sds-end -sds-pf zc702 cpp_template.cpp
	sds++ -c -sds-pf zc702 cpp_template_test.cpp
	sds++ -sds-pf zc702 cpp_template.o cpp_template_test.o -o cpp_template_test.elf
	cp result.golden.dat sd_card/

clean:
	rm -rf cpp_template.o cpp_template_test.o cpp_template_test.elf cpp_template_test.elf.bit
	rm -rf _sds sd_card
