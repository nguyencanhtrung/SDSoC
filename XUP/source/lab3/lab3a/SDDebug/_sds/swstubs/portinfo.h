#ifndef _SDS_PORTINFO_H
#define _SDS_PORTINFO_H
/* File: C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/p0/.cf_work/portinfo.h */
#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_sharpen_filter {
  cf_port_send_t cmd_sharpen_filter;
  cf_port_send_t input_r;
  cf_port_receive_t output_r;
  cf_port_receive_t ap_return;
};

struct _p0_swblk_sobel_filter {
  cf_port_send_t cmd_sobel_filter;
  cf_port_send_t input_r;
  cf_port_receive_t output_r;
  cf_port_receive_t ap_return;
};

extern struct _p0_swblk_sharpen_filter _p0_swinst_sharpen_filter_0;
extern struct _p0_swblk_sobel_filter _p0_swinst_sobel_filter_0;
void _p0_cf_framework_open(int);
void _p0_cf_framework_close(int);

#ifdef __cplusplus
};
#endif
#ifdef __cplusplus
extern "C" {
#endif
void switch_to_next_partition(int);
void init_first_partition();
void close_last_partition();
#ifdef __cplusplus
};
#endif /* extern "C" */
#endif /* _SDS_PORTINFO_H_ */
