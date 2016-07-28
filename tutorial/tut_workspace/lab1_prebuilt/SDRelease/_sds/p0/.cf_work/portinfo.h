#ifdef __cplusplus
extern "C" {
#endif

struct _p0_swblk_madd {
  cf_port_send_t cmd_madd;
  cf_port_send_t A_PORTA;
  cf_port_send_t B_PORTA;
  cf_port_receive_t C_PORTA;
};

struct _p0_swblk_mmult {
  cf_port_send_t cmd_mmult;
  cf_port_send_t in_A;
  cf_port_send_t in_B;
  cf_port_receive_t out_C;
};

extern struct _p0_swblk_madd _p0_swinst_madd_0;
extern struct _p0_swblk_mmult _p0_swinst_mmult_0;
void _p0_cf_framework_open(int);
void _p0_cf_framework_close(int);

#ifdef __cplusplus
};
#endif
