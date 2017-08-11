
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z010clg400-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set BTNs_4Bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 BTNs_4Bits ]
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IIC_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0 ]
  set LEDs_4Bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 LEDs_4Bits ]
  set SWs_4Bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SWs_4Bits ]

  # Create ports
  set AC_BCLK [ create_bd_port -dir O -from 0 -to 0 AC_BCLK ]
  set AC_MCLK [ create_bd_port -dir O AC_MCLK ]
  set AC_MUTE_N [ create_bd_port -dir O -from 0 -to 0 AC_MUTE_N ]
  set AC_PBLRC [ create_bd_port -dir O -from 0 -to 0 AC_PBLRC ]
  set AC_RECLRC [ create_bd_port -dir O -from 0 -to 0 AC_RECLRC ]
  set AC_SDATA_I [ create_bd_port -dir I AC_SDATA_I ]
  set AC_SDATA_O [ create_bd_port -dir O -from 0 -to 0 AC_SDATA_O ]
  set BLUE_O [ create_bd_port -dir O -from 4 -to 0 BLUE_O ]
  set GREEN_O [ create_bd_port -dir O -from 5 -to 0 GREEN_O ]
  set HDMI_CLK_N [ create_bd_port -dir O HDMI_CLK_N ]
  set HDMI_CLK_P [ create_bd_port -dir O HDMI_CLK_P ]
  set HDMI_D0_N [ create_bd_port -dir O HDMI_D0_N ]
  set HDMI_D0_P [ create_bd_port -dir O HDMI_D0_P ]
  set HDMI_D1_N [ create_bd_port -dir O HDMI_D1_N ]
  set HDMI_D1_P [ create_bd_port -dir O HDMI_D1_P ]
  set HDMI_D2_N [ create_bd_port -dir O HDMI_D2_N ]
  set HDMI_D2_P [ create_bd_port -dir O HDMI_D2_P ]
  set HDMI_OEN [ create_bd_port -dir O -from 0 -to 0 HDMI_OEN ]
  set HSYNC_O [ create_bd_port -dir O HSYNC_O ]
  set RED_O [ create_bd_port -dir O -from 4 -to 0 RED_O ]
  set VSYNC_O [ create_bd_port -dir O VSYNC_O ]

  # Create instance: BTNs_4Bits, and set properties
  set BTNs_4Bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 BTNs_4Bits ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_GPIO_WIDTH {4} \
 ] $BTNs_4Bits

  # Create instance: LEDs_4Bits, and set properties
  set LEDs_4Bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 LEDs_4Bits ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {4} \
 ] $LEDs_4Bits

  # Create instance: SWs_4Bits, and set properties
  set SWs_4Bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SWs_4Bits ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_GPIO_WIDTH {4} \
 ] $SWs_4Bits

  # Create instance: axi_dispctrl_0, and set properties
  set axi_dispctrl_0 [ create_bd_cell -type ip -vlnv Digilent:digilent:axi_dispctrl:1.0 axi_dispctrl_0 ]
  set_property -dict [ list \
CONFIG.C_BLUE_WIDTH {5} \
CONFIG.C_GREEN_WIDTH {6} \
CONFIG.C_RED_WIDTH {5} \
 ] $axi_dispctrl_0

  # Create instance: axi_dispctrl_1, and set properties
  set axi_dispctrl_1 [ create_bd_cell -type ip -vlnv Digilent:digilent:axi_dispctrl:1.0 axi_dispctrl_1 ]
  set_property -dict [ list \
CONFIG.C_USE_BUFR_DIV5 {1} \
 ] $axi_dispctrl_1

  # Create instance: axi_i2s_adi_0, and set properties
  set axi_i2s_adi_0 [ create_bd_cell -type ip -vlnv analogdeviceinc.com:adi:axi_i2s_adi:1.0 axi_i2s_adi_0 ]
  set_property -dict [ list \
CONFIG.C_DMA_TYPE {1} \
 ] $axi_i2s_adi_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_0 ]
  set_property -dict [ list \
CONFIG.c_enable_debug_all {1} \
CONFIG.c_include_s2mm {0} \
CONFIG.c_m_axi_mm2s_data_width {64} \
CONFIG.c_mm2s_genlock_mode {1} \
CONFIG.c_mm2s_linebuffer_depth {2048} \
CONFIG.c_mm2s_max_burst_length {16} \
CONFIG.c_use_mm2s_fsync {1} \
 ] $axi_vdma_0

  # Create instance: axi_vdma_1, and set properties
  set axi_vdma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_1 ]
  set_property -dict [ list \
CONFIG.c_enable_debug_all {1} \
CONFIG.c_include_s2mm {0} \
CONFIG.c_m_axi_mm2s_data_width {64} \
CONFIG.c_mm2s_genlock_mode {1} \
CONFIG.c_mm2s_linebuffer_depth {2048} \
CONFIG.c_mm2s_max_burst_length {16} \
CONFIG.c_use_mm2s_fsync {1} \
 ] $axi_vdma_1

  # Create instance: ground, and set properties
  set ground [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ground ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $ground

  # Create instance: hdmi_tx_0, and set properties
  set hdmi_tx_0 [ create_bd_cell -type ip -vlnv digilentinc.com:digilent:hdmi_tx:1.0 hdmi_tx_0 ]
  set_property -dict [ list \
CONFIG.C_BLUE_WIDTH {8} \
CONFIG.C_GREEN_WIDTH {8} \
CONFIG.C_RED_WIDTH {8} \
 ] $hdmi_tx_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_RST1_PORT {1} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {12.288} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_IMPORT_BOARD_PRESET {./lib/xml/ZYBO_zynq_def.xml} \
CONFIG.PCW_MIO_47_PULLUP {enabled} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_USE_DMA0 {1} \
CONFIG.PCW_USE_DMA1 {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {0} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {8} \
 ] $processing_system7_0_axi_periph

  # Create instance: rst_processing_system7_0_100M, and set properties
  set rst_processing_system7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_100M ]

  # Create instance: rst_processing_system7_0_150M, and set properties
  set rst_processing_system7_0_150M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_150M ]

  # Create instance: vdd, and set properties
  set vdd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vdd ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {6} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net BTNs_4Bits_GPIO [get_bd_intf_ports BTNs_4Bits] [get_bd_intf_pins BTNs_4Bits/GPIO]
  connect_bd_intf_net -intf_net LEDs_4Bits_GPIO [get_bd_intf_ports LEDs_4Bits] [get_bd_intf_pins LEDs_4Bits/GPIO]
  connect_bd_intf_net -intf_net SWs_4Bits_GPIO [get_bd_intf_ports SWs_4Bits] [get_bd_intf_pins SWs_4Bits/GPIO]
  connect_bd_intf_net -intf_net axi_i2s_adi_1_DMA_RX_REQ [get_bd_intf_pins axi_i2s_adi_0/DMA_RX_REQ] [get_bd_intf_pins processing_system7_0/DMA1_REQ]
  connect_bd_intf_net -intf_net axi_i2s_adi_1_DMA_TX_REQ [get_bd_intf_pins axi_i2s_adi_0/DMA_TX_REQ] [get_bd_intf_pins processing_system7_0/DMA0_REQ]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_dispctrl_0/S_AXIS_MM2S] [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXIS_MM2S [get_bd_intf_pins axi_dispctrl_1/S_AXIS_MM2S] [get_bd_intf_pins axi_vdma_1/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_1_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins axi_vdma_1/M_AXI_MM2S]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_DMA0_ACK [get_bd_intf_pins axi_i2s_adi_0/DMA_TX_ACK] [get_bd_intf_pins processing_system7_0/DMA0_ACK]
  connect_bd_intf_net -intf_net processing_system7_0_DMA1_ACK [get_bd_intf_pins axi_i2s_adi_0/DMA_RX_ACK] [get_bd_intf_pins processing_system7_0/DMA1_ACK]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports IIC_0] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_dispctrl_0/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_dispctrl_1/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_i2s_adi_0/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins BTNs_4Bits/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M04_AXI [get_bd_intf_pins LEDs_4Bits/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M05_AXI [get_bd_intf_pins SWs_4Bits/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M06_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M07_AXI [get_bd_intf_pins axi_vdma_1/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M07_AXI]

  # Create port connections
  connect_bd_net -net AC_SDATA_I_1 [get_bd_ports AC_SDATA_I] [get_bd_pins axi_i2s_adi_0/SDATA_I]
  connect_bd_net -net axi_dispctrl_0_BLUE_O [get_bd_ports BLUE_O] [get_bd_pins axi_dispctrl_0/BLUE_O]
  connect_bd_net -net axi_dispctrl_0_FSYNC_O [get_bd_pins axi_dispctrl_0/FSYNC_O] [get_bd_pins axi_vdma_0/mm2s_fsync]
  connect_bd_net -net axi_dispctrl_0_GREEN_O [get_bd_ports GREEN_O] [get_bd_pins axi_dispctrl_0/GREEN_O]
  connect_bd_net -net axi_dispctrl_0_HSYNC_O [get_bd_ports HSYNC_O] [get_bd_pins axi_dispctrl_0/HSYNC_O]
  connect_bd_net -net axi_dispctrl_0_PXL_CLK_O [get_bd_pins axi_dispctrl_0/PXL_CLK_O] [get_bd_pins axi_dispctrl_0/s_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk]
  connect_bd_net -net axi_dispctrl_0_RED_O [get_bd_ports RED_O] [get_bd_pins axi_dispctrl_0/RED_O]
  connect_bd_net -net axi_dispctrl_0_VSYNC_O [get_bd_ports VSYNC_O] [get_bd_pins axi_dispctrl_0/VSYNC_O]
  connect_bd_net -net axi_dispctrl_1_BLUE_O [get_bd_pins axi_dispctrl_1/BLUE_O] [get_bd_pins hdmi_tx_0/VGA_B]
  connect_bd_net -net axi_dispctrl_1_DE_O [get_bd_pins axi_dispctrl_1/DE_O] [get_bd_pins hdmi_tx_0/VGA_DE]
  connect_bd_net -net axi_dispctrl_1_FSYNC_O [get_bd_pins axi_dispctrl_1/FSYNC_O] [get_bd_pins axi_vdma_1/mm2s_fsync]
  connect_bd_net -net axi_dispctrl_1_GREEN_O [get_bd_pins axi_dispctrl_1/GREEN_O] [get_bd_pins hdmi_tx_0/VGA_G]
  connect_bd_net -net axi_dispctrl_1_HSYNC_O [get_bd_pins axi_dispctrl_1/HSYNC_O] [get_bd_pins hdmi_tx_0/VGA_HS]
  connect_bd_net -net axi_dispctrl_1_LOCKED_O [get_bd_pins axi_dispctrl_1/LOCKED_O] [get_bd_pins hdmi_tx_0/LOCKED_I]
  connect_bd_net -net axi_dispctrl_1_PXL_CLK_5X_O [get_bd_pins axi_dispctrl_1/PXL_CLK_5X_O] [get_bd_pins hdmi_tx_0/PXLCLK_5X_I]
  connect_bd_net -net axi_dispctrl_1_PXL_CLK_O [get_bd_pins axi_dispctrl_1/PXL_CLK_O] [get_bd_pins axi_dispctrl_1/s_axis_mm2s_aclk] [get_bd_pins axi_vdma_1/m_axis_mm2s_aclk] [get_bd_pins hdmi_tx_0/PXLCLK_I]
  connect_bd_net -net axi_dispctrl_1_RED_O [get_bd_pins axi_dispctrl_1/RED_O] [get_bd_pins hdmi_tx_0/VGA_R]
  connect_bd_net -net axi_dispctrl_1_VSYNC_O [get_bd_pins axi_dispctrl_1/VSYNC_O] [get_bd_pins hdmi_tx_0/VGA_VS]
  connect_bd_net -net axi_i2s_adi_1_BCLK_O [get_bd_ports AC_BCLK] [get_bd_pins axi_i2s_adi_0/BCLK_O]
  connect_bd_net -net axi_i2s_adi_1_LRCLK_O [get_bd_ports AC_PBLRC] [get_bd_ports AC_RECLRC] [get_bd_pins axi_i2s_adi_0/LRCLK_O]
  connect_bd_net -net axi_i2s_adi_1_MUTEN_O [get_bd_ports AC_MUTE_N] [get_bd_pins axi_i2s_adi_0/MUTEN_O]
  connect_bd_net -net axi_i2s_adi_1_SDATA_O [get_bd_ports AC_SDATA_O] [get_bd_pins axi_i2s_adi_0/SDATA_O]
  connect_bd_net -net axi_vdma_0_m_axis_mm2s_tkeep [get_bd_pins axi_dispctrl_0/s_axis_mm2s_tstrb] [get_bd_pins axi_vdma_0/m_axis_mm2s_tkeep]
  connect_bd_net -net axi_vdma_1_m_axis_mm2s_tkeep [get_bd_pins axi_dispctrl_1/s_axis_mm2s_tstrb] [get_bd_pins axi_vdma_1/m_axis_mm2s_tkeep]
  connect_bd_net -net hdmi_tx_0_HDMI_CLK_N [get_bd_ports HDMI_CLK_N] [get_bd_pins hdmi_tx_0/HDMI_CLK_N]
  connect_bd_net -net hdmi_tx_0_HDMI_CLK_P [get_bd_ports HDMI_CLK_P] [get_bd_pins hdmi_tx_0/HDMI_CLK_P]
  connect_bd_net -net hdmi_tx_0_HDMI_D0_N [get_bd_ports HDMI_D0_N] [get_bd_pins hdmi_tx_0/HDMI_D0_N]
  connect_bd_net -net hdmi_tx_0_HDMI_D0_P [get_bd_ports HDMI_D0_P] [get_bd_pins hdmi_tx_0/HDMI_D0_P]
  connect_bd_net -net hdmi_tx_0_HDMI_D1_N [get_bd_ports HDMI_D1_N] [get_bd_pins hdmi_tx_0/HDMI_D1_N]
  connect_bd_net -net hdmi_tx_0_HDMI_D1_P [get_bd_ports HDMI_D1_P] [get_bd_pins hdmi_tx_0/HDMI_D1_P]
  connect_bd_net -net hdmi_tx_0_HDMI_D2_N [get_bd_ports HDMI_D2_N] [get_bd_pins hdmi_tx_0/HDMI_D2_N]
  connect_bd_net -net hdmi_tx_0_HDMI_D2_P [get_bd_ports HDMI_D2_P] [get_bd_pins hdmi_tx_0/HDMI_D2_P]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins BTNs_4Bits/s_axi_aclk] [get_bd_pins LEDs_4Bits/s_axi_aclk] [get_bd_pins SWs_4Bits/s_axi_aclk] [get_bd_pins axi_dispctrl_0/REF_CLK_I] [get_bd_pins axi_dispctrl_0/s_axi_aclk] [get_bd_pins axi_dispctrl_1/REF_CLK_I] [get_bd_pins axi_dispctrl_1/s_axi_aclk] [get_bd_pins axi_i2s_adi_0/DMA_REQ_RX_ACLK] [get_bd_pins axi_i2s_adi_0/DMA_REQ_TX_ACLK] [get_bd_pins axi_i2s_adi_0/S_AXI_ACLK] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_1/s_axi_lite_aclk] [get_bd_pins processing_system7_0/DMA0_ACLK] [get_bd_pins processing_system7_0/DMA1_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/M05_ACLK] [get_bd_pins processing_system7_0_axi_periph/M06_ACLK] [get_bd_pins processing_system7_0_axi_periph/M07_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_100M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_1/m_axi_mm2s_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins rst_processing_system7_0_150M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_ports AC_MCLK] [get_bd_pins axi_i2s_adi_0/DATA_CLK_I] [get_bd_pins processing_system7_0/FCLK_CLK2]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_100M/ext_reset_in]
  connect_bd_net -net processing_system7_0_FCLK_RESET1_N [get_bd_pins processing_system7_0/FCLK_RESET1_N] [get_bd_pins rst_processing_system7_0_150M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_100M_interconnect_aresetn [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins BTNs_4Bits/s_axi_aresetn] [get_bd_pins LEDs_4Bits/s_axi_aresetn] [get_bd_pins SWs_4Bits/s_axi_aresetn] [get_bd_pins axi_dispctrl_0/s_axi_aresetn] [get_bd_pins axi_dispctrl_1/s_axi_aresetn] [get_bd_pins axi_i2s_adi_0/DMA_REQ_RX_RSTN] [get_bd_pins axi_i2s_adi_0/DMA_REQ_TX_RSTN] [get_bd_pins axi_i2s_adi_0/S_AXI_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins axi_vdma_1/axi_resetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M05_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M06_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M07_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_100M/peripheral_aresetn]
  connect_bd_net -net rst_processing_system7_0_150M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins rst_processing_system7_0_150M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_150M_peripheral_aresetn [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins rst_processing_system7_0_150M/peripheral_aresetn]
  connect_bd_net -net vdd_const [get_bd_ports HDMI_OEN] [get_bd_pins vdd/dout]
  connect_bd_net -net xlconstant_0_const [get_bd_pins axi_dispctrl_0/s_axis_mm2s_aresetn] [get_bd_pins axi_dispctrl_1/s_axis_mm2s_aresetn] [get_bd_pins ground/dout] [get_bd_pins hdmi_tx_0/RST_I] [get_bd_pins processing_system7_0/SDIO0_WP]
  connect_bd_net -net xlconstant_0_const1 [get_bd_pins axi_vdma_0/mm2s_frame_ptr_in] [get_bd_pins axi_vdma_1/mm2s_frame_ptr_in] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_1/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs BTNs_4Bits/S_AXI/Reg] SEG_BTNs_4Bits_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs LEDs_4Bits/S_AXI/Reg] SEG_LEDs_4Bits_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41220000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs SWs_4Bits/S_AXI/Reg] SEG_SWs_4Bits_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dispctrl_0/S_AXI/S_AXI_reg] SEG_axi_dispctrl_0_S_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dispctrl_1/S_AXI/S_AXI_reg] SEG_axi_dispctrl_1_S_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_i2s_adi_0/S_AXI/S_AXI_reg] SEG_axi_i2s_adi_0_S_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43010000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_1/S_AXI_LITE/Reg] SEG_axi_vdma_1_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port HDMI_CLK_P -pg 1 -y 1650 -defaultsOSRD
preplace port DDR -pg 1 -y 380 -defaultsOSRD
preplace port AC_MCLK -pg 1 -y 290 -defaultsOSRD
preplace port HDMI_D2_N -pg 1 -y 1710 -defaultsOSRD
preplace port HDMI_D2_P -pg 1 -y 1690 -defaultsOSRD
preplace port HDMI_D1_N -pg 1 -y 1750 -defaultsOSRD
preplace port HDMI_D0_N -pg 1 -y 1790 -defaultsOSRD
preplace port SWs_4Bits -pg 1 -y 1040 -defaultsOSRD
preplace port LEDs_4Bits -pg 1 -y 920 -defaultsOSRD
preplace port HDMI_D1_P -pg 1 -y 1730 -defaultsOSRD
preplace port HDMI_D0_P -pg 1 -y 1770 -defaultsOSRD
preplace port IIC_0 -pg 1 -y 420 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 400 -defaultsOSRD
preplace port BTNs_4Bits -pg 1 -y 800 -defaultsOSRD
preplace port HSYNC_O -pg 1 -y 560 -defaultsOSRD
preplace port VSYNC_O -pg 1 -y 580 -defaultsOSRD
preplace port AC_SDATA_I -pg 1 -y 710 -defaultsOSRD
preplace port HDMI_CLK_N -pg 1 -y 1670 -defaultsOSRD
preplace portBus AC_RECLRC -pg 1 -y 150 -defaultsOSRD
preplace portBus AC_MUTE_N -pg 1 -y 190 -defaultsOSRD
preplace portBus AC_SDATA_O -pg 1 -y 170 -defaultsOSRD
preplace portBus AC_PBLRC -pg 1 -y 130 -defaultsOSRD
preplace portBus BLUE_O -pg 1 -y 660 -defaultsOSRD
preplace portBus RED_O -pg 1 -y 620 -defaultsOSRD
preplace portBus GREEN_O -pg 1 -y 640 -defaultsOSRD
preplace portBus AC_BCLK -pg 1 -y 110 -defaultsOSRD
preplace portBus HDMI_OEN -pg 1 -y 1470 -defaultsOSRD
preplace inst vdd -pg 1 -lvl 7 -y 1470 -defaultsOSRD
preplace inst hdmi_tx_0 -pg 1 -lvl 7 -y 1720 -defaultsOSRD
preplace inst axi_vdma_0 -pg 1 -lvl 3 -y 870 -defaultsOSRD
preplace inst rst_processing_system7_0_100M -pg 1 -lvl 1 -y 1120 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 1260 -defaultsOSRD
preplace inst axi_vdma_1 -pg 1 -lvl 3 -y 1390 -defaultsOSRD
preplace inst SWs_4Bits -pg 1 -lvl 7 -y 1040 -defaultsOSRD
preplace inst LEDs_4Bits -pg 1 -lvl 7 -y 920 -defaultsOSRD
preplace inst axi_dispctrl_0 -pg 1 -lvl 7 -y 580 -defaultsOSRD
preplace inst axi_dispctrl_1 -pg 1 -lvl 7 -y 1260 -defaultsOSRD
preplace inst BTNs_4Bits -pg 1 -lvl 7 -y 800 -defaultsOSRD
preplace inst axi_i2s_adi_0 -pg 1 -lvl 7 -y 140 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 4 -y 640 -defaultsOSRD
preplace inst ground -pg 1 -lvl 5 -y 720 -defaultsOSRD
preplace inst rst_processing_system7_0_150M -pg 1 -lvl 2 -y 620 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 6 -y 830 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 5 -y 500 -defaultsOSRD
preplace netloc axi_vdma_0_M_AXI_MM2S 1 3 1 1110
preplace netloc hdmi_tx_0_HDMI_D0_P 1 7 1 NJ
preplace netloc axi_dispctrl_0_PXL_CLK_O 1 2 6 740 710 NJ 810 NJ 810 NJ 570 2430 730 2860
preplace netloc SWs_4Bits_GPIO 1 7 1 NJ
preplace netloc axi_i2s_adi_1_DMA_TX_REQ 1 4 4 1500 300 NJ 300 NJ 300 2890
preplace netloc axi_dispctrl_1_VSYNC_O 1 6 2 2470 1580 2900
preplace netloc processing_system7_0_FIXED_IO 1 5 3 NJ 400 NJ 400 NJ
preplace netloc rst_processing_system7_0_150M_peripheral_aresetn 1 2 2 NJ 660 1180
preplace netloc axi_dispctrl_0_RED_O 1 7 1 NJ
preplace netloc axi_dispctrl_1_PXL_CLK_O 1 2 6 740 1540 NJ 1540 NJ 1540 NJ 1540 2400 1410 2860
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 3 4 N 790 NJ 790 NJ 530 NJ
preplace netloc axi_i2s_adi_1_DMA_RX_REQ 1 4 4 1480 290 NJ 290 NJ 290 2860
preplace netloc axi_dispctrl_1_BLUE_O 1 6 2 2410 1520 2830
preplace netloc axi_i2s_adi_1_BCLK_O 1 7 1 NJ
preplace netloc processing_system7_0_axi_periph_M06_AXI 1 2 5 730 270 NJ 270 NJ 270 NJ 270 2370
preplace netloc processing_system7_0_FCLK_RESET1_N 1 1 5 360 520 NJ 520 NJ 840 NJ 840 1950
preplace netloc axi_dispctrl_1_HSYNC_O 1 6 2 2440 1540 2880
preplace netloc xlconstant_0_const1 1 1 2 NJ 1260 720
preplace netloc processing_system7_0_DDR 1 5 3 NJ 380 NJ 380 NJ
preplace netloc axi_dispctrl_1_FSYNC_O 1 2 6 730 1110 NJ 1110 NJ 1110 NJ 1110 NJ 1110 2880
preplace netloc hdmi_tx_0_HDMI_D2_N 1 7 1 NJ
preplace netloc LEDs_4Bits_GPIO 1 7 1 NJ
preplace netloc axi_dispctrl_0_GREEN_O 1 7 1 NJ
preplace netloc processing_system7_0_axi_periph_M05_AXI 1 6 1 2400
preplace netloc hdmi_tx_0_HDMI_D2_P 1 7 1 NJ
preplace netloc AC_SDATA_I_1 1 0 7 NJ 120 NJ 120 NJ 120 NJ 120 NJ 120 NJ 120 NJ
preplace netloc axi_vdma_1_M_AXIS_MM2S 1 3 4 1170 1210 NJ 1210 NJ 1210 NJ
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 6 30 1030 NJ 1030 NJ 1030 NJ 1030 NJ 1030 1970
preplace netloc processing_system7_0_axi_periph_M02_AXI 1 6 1 2380
preplace netloc processing_system7_0_axi_periph_M03_AXI 1 6 1 2430
preplace netloc processing_system7_0_axi_periph_M07_AXI 1 2 5 740 1120 NJ 1120 NJ 1120 NJ 1120 2370
preplace netloc hdmi_tx_0_HDMI_D1_N 1 7 1 NJ
preplace netloc axi_vdma_1_M_AXI_MM2S 1 3 1 1140
preplace netloc processing_system7_0_DMA1_ACK 1 5 2 NJ 80 N
preplace netloc xlconstant_0_const 1 5 2 1980 540 2390
preplace netloc processing_system7_0_IIC_0 1 5 3 NJ 420 NJ 420 NJ
preplace netloc axi_dispctrl_1_DE_O 1 6 2 2420 1420 2850
preplace netloc hdmi_tx_0_HDMI_D1_P 1 7 1 NJ
preplace netloc vdd_const 1 7 1 NJ
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 6 1 2410
preplace netloc axi_i2s_adi_1_MUTEN_O 1 7 1 NJ
preplace netloc hdmi_tx_0_HDMI_CLK_N 1 7 1 NJ
preplace netloc axi_dispctrl_0_VSYNC_O 1 7 1 NJ
preplace netloc axi_dispctrl_0_HSYNC_O 1 7 1 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 7 20 1020 NJ 1020 700 720 NJ 830 1490 830 2020 560 2470
preplace netloc hdmi_tx_0_HDMI_CLK_P 1 7 1 NJ
preplace netloc processing_system7_0_DMA0_ACK 1 5 2 NJ 60 N
preplace netloc processing_system7_0_FCLK_CLK1 1 1 5 370 710 690 700 1170 800 1500 770 1960
preplace netloc axi_i2s_adi_1_LRCLK_O 1 7 1 2910
preplace netloc BTNs_4Bits_GPIO 1 7 1 NJ
preplace netloc processing_system7_0_FCLK_CLK2 1 5 3 NJ 310 2390 310 NJ
preplace netloc rst_processing_system7_0_100M_interconnect_aresetn 1 1 5 NJ 530 NJ 530 NJ 850 NJ 850 2000
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 6 1 2410
preplace netloc axi_vdma_1_m_axis_mm2s_tkeep 1 3 4 1180 1230 NJ 1230 NJ 1230 NJ
preplace netloc axi_dispctrl_0_BLUE_O 1 7 1 NJ
preplace netloc rst_processing_system7_0_150M_interconnect_aresetn 1 2 2 NJ 610 N
preplace netloc axi_vdma_0_m_axis_mm2s_tkeep 1 3 4 1110 820 NJ 820 NJ 550 NJ
preplace netloc axi_dispctrl_1_LOCKED_O 1 6 2 2460 1550 2890
preplace netloc processing_system7_0_M_AXI_GP0 1 5 1 1950
preplace netloc axi_mem_intercon_M00_AXI 1 4 1 1480
preplace netloc axi_dispctrl_0_FSYNC_O 1 2 6 720 310 NJ 310 NJ 310 NJ 320 NJ 320 2890
preplace netloc axi_i2s_adi_1_SDATA_O 1 7 1 NJ
preplace netloc processing_system7_0_axi_periph_M04_AXI 1 6 1 2430
preplace netloc hdmi_tx_0_HDMI_D0_N 1 7 1 NJ
preplace netloc rst_processing_system7_0_100M_peripheral_aresetn 1 1 6 NJ 1160 710 1020 NJ 1020 NJ 1020 2040 520 2480
preplace netloc axi_dispctrl_1_PXL_CLK_5X_O 1 6 2 2480 1560 2910
preplace netloc axi_dispctrl_1_RED_O 1 6 2 2450 1570 2870
preplace netloc axi_dispctrl_1_GREEN_O 1 6 2 2430 1530 2840
levelinfo -pg 1 0 190 530 930 1330 1730 2220 2680 2930 -top 0 -bot 1860
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


