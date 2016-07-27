ifeq ($(shell uname), Linux)
	S =;
	MKDIR = mkdir -p
	fixpath = $1
else
	S =&
	MKDIR = mkdir
	fixpath = $(subst /,\,$1)
endif

.PHONY: zc702_acp

BOOTROOT = 

# create archived vivado project for platform
vivado: 
	vivado -mode batch -source zc702_acp.bd.tcl

# create sdi zc702_acp platform 
zc702_acp: vivado
	rm -rf zc702_acp
	${MKDIR} zc702_acp
	cd zc702_acp $(S) unzip ../zc702_acp.xpr.zip $(S) rm -rf zc702_acp/zc702_acp.cache $(S) rm -rf zc702_acp/zc702_acp.runs $(S) rm -rf zc702_acp/zc702_acp.sdk ${S} rm -rf zc702_acp/vivado* $(S) mv zc702_acp vivado $(S) cd ..
	cp -f $(call fixpath,hsi/zc702_acp.pfm) $(call fixpath,zc702_acp/zc702_acp_hw.pfm)
	cp -f zc702_acp_sw.pfm $(call fixpath,zc702_acp/)
	cp -r ${BOOTROOT}boot zc702_acp

# build test app for zc702_acp platform
pf_test: zc702_acp
	make -C pf_test ultraclean 
	make -C pf_test

clean: 
	touch vivado vivado.log ps_clock_registers.log
	${RM} -rf vivado*
	${RM} ps_clock_registers.log

ultraclean: clean
	touch zc702_acp.xpr.zip zc702_acp
	${RM} zc702_acp.xpr.zip 
	${RM} -rf zc702_acp hsi*
	make -C pf_test ultraclean
