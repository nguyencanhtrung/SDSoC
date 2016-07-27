
 add_fsm_encoding \
       {axi_dwidth_converter_v2_1_w_upsizer_pktfifo.mi_state} \
       { }  \
       {{000 000} {001 001} {010 011} {011 010} {100 111} {101 110} {110 100} {111 101} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo.state} \
       { }  \
       {{00 01000} {01 10000} {10 00010} {11 00100} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized0.state} \
       { }  \
       {{00 01000} {01 10000} {10 00010} {11 00100} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized1.state} \
       { }  \
       {{00 01000} {01 10000} {10 00010} {11 00100} }

 add_fsm_encoding \
       {axi_dma_mm2s_sm.mm2s_cs} \
       { }  \
       {{00 000} {01 001} {10 011} {11 010} }

 add_fsm_encoding \
       {axi_dma_s2mm_sm.GEN_SM_FOR_NO_LENGTH.s2mm_cs} \
       { }  \
       {{00 000} {01 001} {10 011} {11 010} }
