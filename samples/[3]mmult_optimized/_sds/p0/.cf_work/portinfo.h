#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_mmult_accel {
  cf_port_send_t cmd_mmult_accel;
  cf_port_send_t in_A;
  cf_port_send_t in_B;
  cf_port_receive_t out_C;
};

extern struct _p0_swblk_mmult_accel _p0_swinst_mmult_accel_0;
void _p0_cf_framework_open(int);
void _p0_cf_framework_close(int);

#ifdef __cplusplus
};
#endif
