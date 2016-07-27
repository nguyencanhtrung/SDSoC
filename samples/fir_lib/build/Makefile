all: libfir.a

libfir.a: fir.c fir.h fir_compiler.fcnmap.xml fir_compiler.params.xml
	sdslib -lib libfir.a \
	  fir fir.c \
	  fir_reload fir_reload.c \
	  fir_config fir_config.c \
	  -vlnv xilinx.com:ip:fir_compiler:7.2 \
	  -ip-map fir_compiler.fcnmap.xml \
	  -ip-params fir_compiler.params.xml

clean:
	rm -rf libfir.a

ultraclean: clean
	rm -rf _sds
