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
