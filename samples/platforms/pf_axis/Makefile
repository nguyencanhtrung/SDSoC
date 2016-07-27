ifeq ($(shell uname), Linux)
	S =;
	MKDIR = mkdir -p
	fixpath = $1
else
	S =&
	MKDIR = mkdir
	fixpath = $(subst /,\,$1)
endif

.PHONY: pf_axis

BOOTROOT = 

PF_LIB = $(call fixpath,pf_axis/arm-xilinx-linux-gnueabi/lib)
PF_INC = $(call fixpath,pf_axis/arm-xilinx-linux-gnueabi/include)

# create archived vivado project for platform
vivado: 
	$(MKDIR) $(call fixpath,repo/xilinx_com_hls_io2axis_1_0)
	cd $(call fixpath,repo/xilinx_com_hls_io2axis_1_0) $(S) unzip $(call fixpath,../../xilinx_com_hls_io2axis_1_0.zip) $(S) cd ../..
	$(MKDIR) $(call fixpath,repo/xilinx_com_hls_axis2io_1_0)
	cd $(call fixpath,repo/xilinx_com_hls_axis2io_1_0) $(S) unzip $(call fixpath,../../xilinx_com_hls_axis2io_1_0.zip) $(S) cd ../..
	vivado -mode batch -source pf_axis.bd.tcl

# create sdscc pf_axis platform 
pf_axis: vivado
	rm -rf pf_axis
	${MKDIR} pf_axis
	${MKDIR} ${PF_INC}
	${MKDIR} ${PF_LIB}
	cd pf_axis $(S) unzip ../pf_axis.xpr.zip $(S) rm -rf pf_axis/pf_axis.cache $(S) rm -rf pf_axis/pf_axis.runs $(S) rm -rf pf_axis/pf_axis.sdk ${S} rm -rf pf_axis/vivado* $(S) mv pf_axis vivado $(S) cd ..
	cp -f $(call fixpath,hsi/pf_axis.pfm) $(call fixpath,pf_axis/pf_axis_hw.pfm)
	cp -f pf_axis_sw.pfm $(call fixpath,pf_axis/)
	make -C pf_lib
	cp $(call fixpath,pf_lib/pf_axis.h) ${PF_INC}
	cp $(call fixpath,pf_lib/libpf_axis.a) ${PF_LIB}
	cp -r ${BOOTROOT}boot pf_axis

# build test app for pf_axis platform
pf_test: pf_axis
	make -C pf_test ultraclean 
	make -C pf_test

clean: 
	touch vivado vivado.log ps_clock_registers.log
	${RM} -rf repo
	${RM} -rf vivado*
	${RM} ps_clock_registers.log

ultraclean: clean
	touch pf_axis.xpr.zip pf_axis
	${RM} pf_axis.xpr.zip
	${RM} -rf pf_axis hsi*
	make -C pf_test ultraclean
