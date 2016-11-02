#ifndef _SDI_PORTINFO_H
#define _SDI_PORTINFO_H
/* File: /home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/p0/.cf_work/portinfo.h */
#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_correlation_accel_v2 {
  cf_port_send_t cmd_correlation_accel_v2;
  cf_port_send_t number_of_days;
  cf_port_send_t number_of_indices;
  cf_port_send_t in_indices;
  cf_port_receive_t out_correlation;
};

extern struct _p0_swblk_correlation_accel_v2 _p0_swinst_correlation_accel_v2_0;
extern struct _p0_swblk_correlation_accel_v2 _p0_swinst_correlation_accel_v2_1;
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
#endif /* _SDI_PORTINFO_H_ */
