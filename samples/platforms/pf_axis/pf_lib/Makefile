ifeq ($(shell uname), Linux)
	S =;
	MKDIR = mkdir -p
	fixpath = $1
else
	S =&
	MKDIR = mkdir
	fixpath = $(subst /,\,$1)
endif

PF_WR = $(call fixpath,../xilinx_com_hls_axis2io_1_0.zip)
PF_RD = $(call fixpath,../xilinx_com_hls_io2axis_1_0.zip)

.PHONY: all

all: libpf_read.a libpf_write.a

libpf_read.a: pf_read.cpp pf_axis.h pf_read.fcnmap.xml pf_read.params.xml ${PF_RD} 
	${MKDIR} xilinx_com_hls_io2axis_1_0 ${S} cd xilinx_com_hls_io2axis_1_0 ${S} unzip -n ../${PF_RD}
	sdslib -lib libpf_axis.a \
	  pf_read pf_read.cpp \
	  -vlnv xilinx.com:hls:io2axis:1.0 \
	  -ip-map pf_read.fcnmap.xml \
	  -ip-repo ./xilinx_com_hls_io2axis_1_0 \
	  -ip-params pf_read.params.xml

libpf_write.a: pf_write.cpp pf_axis.h pf_write.fcnmap.xml pf_write.params.xml ${PF_WR} 
	${MKDIR} xilinx_com_hls_axis2io_1_0 ${S} cd xilinx_com_hls_axis2io_1_0 ${S} unzip -n ../${PF_WR}
	sdslib -lib libpf_axis.a \
	  pf_write pf_write.cpp \
	  -vlnv xilinx.com:hls:axis2io:1.0 \
	  -ip-map pf_write.fcnmap.xml \
	  -ip-repo ./xilinx_com_hls_axis2io_1_0 \
	  -ip-params pf_write.params.xml

clean:
	rm -rf libpf_axis.a xilinx_com_hls_io2axis_1_0 xilinx_com_hls_axis2io_1_0 _sds


