vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/lib_cdc_v1_0_2
vlib msim/interrupt_control_v3_1_4
vlib msim/axi_gpio_v2_0_15
vlib msim/axi_i2s_adi_v1_00_a
vlib msim/adi_common_v1_00_a
vlib msim/lib_pkg_v1_0_2
vlib msim/fifo_generator_v13_1_4
vlib msim/lib_fifo_v1_0_8
vlib msim/blk_mem_gen_v8_3_6
vlib msim/lib_bmg_v1_0_8
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_15
vlib msim/axi_vdma_v6_3_1
vlib msim/xlconstant_v1_1_3
vlib msim/axi_infrastructure_v1_1_0
vlib msim/xil_common_vip_v1_0_0
vlib msim/smartconnect_v1_0
vlib msim/axi_protocol_checker_v1_1_14
vlib msim/axi_vip_v1_0_2
vlib msim/axi_vip_v1_0_1
vlib msim/proc_sys_reset_v5_0_11
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_register_slice_v2_1_13
vlib msim/axi_data_fifo_v2_1_12
vlib msim/axi_crossbar_v2_1_14
vlib msim/axi_protocol_converter_v2_1_13

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_15 msim/axi_gpio_v2_0_15
vmap axi_i2s_adi_v1_00_a msim/axi_i2s_adi_v1_00_a
vmap adi_common_v1_00_a msim/adi_common_v1_00_a
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap lib_fifo_v1_0_8 msim/lib_fifo_v1_0_8
vmap blk_mem_gen_v8_3_6 msim/blk_mem_gen_v8_3_6
vmap lib_bmg_v1_0_8 msim/lib_bmg_v1_0_8
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_15 msim/axi_datamover_v5_1_15
vmap axi_vdma_v6_3_1 msim/axi_vdma_v6_3_1
vmap xlconstant_v1_1_3 msim/xlconstant_v1_1_3
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 msim/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_14 msim/axi_protocol_checker_v1_1_14
vmap axi_vip_v1_0_2 msim/axi_vip_v1_0_2
vmap axi_vip_v1_0_1 msim/axi_vip_v1_0_1
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_13 msim/axi_register_slice_v2_1_13
vmap axi_data_fifo_v2_1_12 msim/axi_data_fifo_v2_1_12
vmap axi_crossbar_v2_1_14 msim/axi_crossbar_v2_1_14
vmap axi_protocol_converter_v2_1_13 msim/axi_protocol_converter_v2_1_13

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"/mnt/workspace/toolchains/2017.2/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/mnt/workspace/toolchains/2017.2/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/mnt/workspace/toolchains/2017.2/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_15 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/cb07/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_BTNs_4Bits_0/sim/system_BTNs_4Bits_0.vhd" \
"../../../bd/system/ip/system_LEDs_4Bits_1/sim/system_LEDs_4Bits_1.vhd" \
"../../../bd/system/ip/system_SWs_4Bits_2/sim/system_SWs_4Bits_2.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/vdma_to_vga.vhd" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/axi_dispctrl_v1_0_S_AXI.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/work/hdl/mmcme2_drp.v" \
"../../../bd/system/ip/system_axi_dispctrl_0_0/sim/system_axi_dispctrl_0_0.v" \
"../../../bd/system/ip/system_axi_dispctrl_1_1/sim/system_axi_dispctrl_1_1.v" \

vcom -work axi_i2s_adi_v1_00_a -64 -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_tx.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_controller.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/work/hdl/axi_i2s_adi.vhd" \

vcom -work axi_i2s_adi_v1_00_a -64 -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/fifo_synchronizer.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_rx.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/axi_i2s_adi_v1_00_a/hdl/i2s_clkgen.vhd" \

vcom -work adi_common_v1_00_a -64 -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_ctrlif.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/pl330_dma_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/adi_common_v1_00_a/hdl/adi_common/dma_fifo.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_i2s_adi_1_0/sim/system_axi_i2s_adi_1_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_8 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/c387/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_3_6 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \

vcom -work lib_bmg_v1_0_8 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/0dfc/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_15 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/43a6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_1 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_1 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \
"../../../bd/system/ip/system_axi_vdma_1_1/sim/system_axi_vdma_1_1.vhd" \

vlog -work xlconstant_v1_1_3 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/45df/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_ground_0/sim/system_ground_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/hdmi_tx.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/TMDSEncoder.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/SerializerN_1.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/work/hdl/DVITransmitter.vhd" \
"../../../bd/system/ip/system_hdmi_tx_0_0/sim/system_hdmi_tx_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_14 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/a1b2/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_2 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl/axi_vip_v1_0_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ip/system_vdd_1/sim/system_vdd_1.v" \
"../../../bd/system/ip/system_xlconstant_0_2/sim/system_xlconstant_0_2.v" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_processing_system7_0_100M_0/sim/system_rst_processing_system7_0_100M_0.vhd" \
"../../../bd/system/ip/system_rst_processing_system7_0_150M_0/sim/system_rst_processing_system7_0_150M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_12 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_14 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f582/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_13 -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/f0ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/450f/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../zybo_bsd.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/hdl/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

