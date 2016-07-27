ifeq ($(shell uname), Linux)
	S =;
	MKDIR = mkdir -p
	fixpath = $1
else
	S =&
	MKDIR = mkdir
	fixpath = $(subst /,\,$1)
endif

.PHONY: zc702_led

BOOTROOT = 

PF_LIB = $(call fixpath,zc702_led/arm-xilinx-linux-gnueabi/lib)
PF_INC = $(call fixpath,zc702_led/arm-xilinx-linux-gnueabi/include)

# create archived vivado project for platform
vivado: 
	vivado -mode batch -source zc702_led.bd.tcl

# create sdi zc702_led platform 
zc702_led: vivado
	rm -rf zc702_led
	${MKDIR} zc702_led
	${MKDIR} ${PF_INC}
	${MKDIR} ${PF_LIB}
	cd zc702_led $(S) unzip ../zc702_led.xpr.zip $(S) rm -rf zc702_led/zc702_led.cache $(S) rm -rf zc702_led/zc702_led.runs $(S) rm -rf zc702_led/zc702_led.sdk ${S} rm -rf zc702_led/vivado* $(S) mv zc702_led vivado $(S) cd ..
	cp -f $(call fixpath,hsm/zc702_led.pfm) $(call fixpath,zc702_led/zc702_led_hw.pfm)
	cp -f zc702_led_sw.pfm $(call fixpath,zc702_led/)
	make -C lib
	cp $(call fixpath,lib/uio_axi_gpio.h) ${PF_INC}
	cp $(call fixpath,lib/libzc702_led.a) ${PF_LIB}
	cp -r ${BOOTROOT}boot zc702_led

# build test app for zc702_led platform
test: zc702_led
	make -C test ultraclean 
	make -C test

clean: 
	touch vivado vivado.log ps_clock_registers.log
	${RM} -rf vivado*
	${RM} ps_clock_registers.log

ultraclean: clean
	touch zc702_led.xpr.zip zc702_led
	${RM} zc702_led.xpr.zip 
	${RM} -rf zc702_led hsm hsi*
	make -C lib clean
	make -C test ultraclean
