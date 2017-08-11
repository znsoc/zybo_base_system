-makelib ies/xil_defaultlib -sv \
  "/mnt/workspace/toolchains/2016.4/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/mnt/workspace/toolchains/2016.4/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/mnt/workspace/toolchains/2016.4/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_13 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_BTNs_4Bits_0/sim/system_BTNs_4Bits_0.vhd" \
  "../../../bd/system/ip/system_LEDs_4Bits_1/sim/system_LEDs_4Bits_1.vhd" \
  "../../../bd/system/ip/system_SWs_4Bits_2/sim/system_SWs_4Bits_2.vhd" \
  "../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0.vhd" \
  "../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/vdma_to_vga.vhd" \
  "../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0_S_AXI.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/mmcme2_drp.v" \
  "../../../bd/system/ip/system_axi_dispctrl_0_0/sim/system_axi_dispctrl_0_0.v" \
  "../../../bd/system/ip/system_axi_dispctrl_1_1/sim/system_axi_dispctrl_1_1.v" \
-endlib
-makelib ies/axi_i2s_adi_v1_00_a \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_tx.vhd" \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_controller.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/work/hdl/axi_i2s_adi.vhd" \
-endlib
-makelib ies/axi_i2s_adi_v1_00_a \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/fifo_synchronizer.vhd" \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_rx.vhd" \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_clkgen.vhd" \
-endlib
-makelib ies/adi_common_v1_00_a \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_ctrlif.vhd" \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/pl330_dma_fifo.vhd" \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/dma_fifo.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_axi_i2s_adi_1_0/sim/system_axi_i2s_adi_1_0.vhd" \
-endlib
-makelib ies/lib_pkg_v1_0_2 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/lib_fifo_v1_0_7 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/5ab6/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/lib_bmg_v1_0_7 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/38e8/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib ies/lib_srl_fifo_v1_0_2 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/axi_datamover_v5_1_13 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/bf41/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_vdma_v6_2_10 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.v" \
-endlib
-makelib ies/axi_vdma_v6_2_10 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
  "../../../bd/system/ip/system_axi_vdma_1_1/sim/system_axi_vdma_1_1.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ipshared/e147/xlconstant.v" \
  "../../../bd/system/ip/system_ground_0/sim/system_ground_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/hdmi_tx.vhd" \
  "../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/TMDSEncoder.vhd" \
  "../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/SerializerN_1.vhd" \
  "../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/DVITransmitter.vhd" \
  "../../../bd/system/ip/system_hdmi_tx_0_0/sim/system_hdmi_tx_0_0.vhd" \
-endlib
-makelib ies/processing_system7_bfm_v2_0_5 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
  "../../../bd/system/ip/system_vdd_1/sim/system_vdd_1.v" \
  "../../../bd/system/ip/system_xlconstant_0_2/sim/system_xlconstant_0_2.v" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_rst_processing_system7_0_100M_0/sim/system_rst_processing_system7_0_100M_0.vhd" \
  "../../../bd/system/ip/system_rst_processing_system7_0_150M_0/sim/system_rst_processing_system7_0_150M_0.vhd" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_12 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
  "../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
  "../../../bd/system/hdl/system.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

