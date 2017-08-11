vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_13
vlib activehdl/axi_i2s_adi_v1_00_a
vlib activehdl/adi_common_v1_00_a
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_1_3
vlib activehdl/lib_fifo_v1_0_7
vlib activehdl/blk_mem_gen_v8_3_5
vlib activehdl/lib_bmg_v1_0_7
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_13
vlib activehdl/axi_vdma_v6_2_10
vlib activehdl/processing_system7_bfm_v2_0_5
vlib activehdl/proc_sys_reset_v5_0_10
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_11
vlib activehdl/axi_data_fifo_v2_1_10
vlib activehdl/axi_crossbar_v2_1_12
vlib activehdl/axi_protocol_converter_v2_1_11

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_13 activehdl/axi_gpio_v2_0_13
vmap axi_i2s_adi_v1_00_a activehdl/axi_i2s_adi_v1_00_a
vmap adi_common_v1_00_a activehdl/adi_common_v1_00_a
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_1_3 activehdl/fifo_generator_v13_1_3
vmap lib_fifo_v1_0_7 activehdl/lib_fifo_v1_0_7
vmap blk_mem_gen_v8_3_5 activehdl/blk_mem_gen_v8_3_5
vmap lib_bmg_v1_0_7 activehdl/lib_bmg_v1_0_7
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_13 activehdl/axi_datamover_v5_1_13
vmap axi_vdma_v6_2_10 activehdl/axi_vdma_v6_2_10
vmap processing_system7_bfm_v2_0_5 activehdl/processing_system7_bfm_v2_0_5
vmap proc_sys_reset_v5_0_10 activehdl/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 activehdl/axi_register_slice_v2_1_11
vmap axi_data_fifo_v2_1_10 activehdl/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 activehdl/axi_crossbar_v2_1_12
vmap axi_protocol_converter_v2_1_11 activehdl/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"/mnt/workspace/toolchains/2016.4/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/mnt/workspace/toolchains/2016.4/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/mnt/workspace/toolchains/2016.4/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_13 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_BTNs_4Bits_0/sim/system_BTNs_4Bits_0.vhd" \
"../../../bd/system/ip/system_LEDs_4Bits_1/sim/system_LEDs_4Bits_1.vhd" \
"../../../bd/system/ip/system_SWs_4Bits_2/sim/system_SWs_4Bits_2.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/vdma_to_vga.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0_S_AXI.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/mmcme2_drp.v" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/sim/system_axi_dispctrl_0_0.v" \
"../../../bd/system/ip/system_axi_dispctrl_1_1/sim/system_axi_dispctrl_1_1.v" \

vcom -work axi_i2s_adi_v1_00_a -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_tx.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_controller.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/work/hdl/axi_i2s_adi.vhd" \

vcom -work axi_i2s_adi_v1_00_a -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/fifo_synchronizer.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_rx.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_clkgen.vhd" \

vcom -work adi_common_v1_00_a -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_ctrlif.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/pl330_dma_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/dma_fifo.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/sim/system_axi_i2s_adi_1_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_7 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/5ab6/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_3_5  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_7 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/38e8/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_13 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/bf41/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_2_10  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.v" \

vcom -work axi_vdma_v6_2_10 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
"../../../bd/system/ip/system_axi_vdma_1_1/sim/system_axi_vdma_1_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ipshared/e147/xlconstant.v" \
"../../../bd/system/ip/system_ground_0/sim/system_ground_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/hdmi_tx.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/TMDSEncoder.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/SerializerN_1.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/DVITransmitter.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/sim/system_hdmi_tx_0_0.vhd" \

vlog -work processing_system7_bfm_v2_0_5  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ip/system_vdd_1/sim/system_vdd_1.v" \
"../../../bd/system/ip/system_xlconstant_0_2/sim/system_xlconstant_0_2.v" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_processing_system7_0_100M_0/sim/system_rst_processing_system7_0_100M_0.vhd" \
"../../../bd/system/ip/system_rst_processing_system7_0_150M_0/sim/system_rst_processing_system7_0_150M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_10  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_11  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ed72/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/hdl/system.v" \

vlog -work xil_defaultlib "glbl.v"

