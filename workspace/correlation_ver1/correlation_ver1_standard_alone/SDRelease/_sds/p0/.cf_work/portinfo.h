#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_correlation_accel_v1 {
  cf_port_send_t cmd_correlation_accel_v1;
  cf_port_send_t number_of_days;
  cf_port_send_t number_of_indices;
  cf_port_send_t in_indices;
  cf_port_send_t out_correlation;
  cf_port_receive_t ap_return;
};

extern struct _p0_swblk_correlation_accel_v1 _p0_swinst_correlation_accel_v1_0;
void _p0_cf_framework_open(int);
void _p0_cf_framework_close(int);

#ifdef __cplusplus
};
#endif
