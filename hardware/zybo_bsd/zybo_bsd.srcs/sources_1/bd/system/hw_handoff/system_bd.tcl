
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
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

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
CONFIG.c_enable_all {1} \
CONFIG.c_enable_mm2s_delay_counter {0} \
CONFIG.c_enable_mm2s_frm_counter {0} \
CONFIG.c_enable_s2mm_delay_counter {0} \
CONFIG.c_enable_s2mm_frm_counter {0} \
CONFIG.c_include_s2mm {0} \
CONFIG.c_m_axi_mm2s_data_width {64} \
CONFIG.c_mm2s_genlock_mode {1} \
CONFIG.c_mm2s_linebuffer_depth {2048} \
CONFIG.c_mm2s_max_burst_length {16} \
CONFIG.c_use_mm2s_fsync {1} \
 ] $axi_vdma_0

  # Create instance: axi_vdma_1, and set properties
  set axi_vdma_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_1 ]
  set_property -dict [ list \
CONFIG.c_enable_all {1} \
CONFIG.c_enable_mm2s_delay_counter {0} \
CONFIG.c_enable_mm2s_frm_counter {0} \
CONFIG.c_enable_s2mm_delay_counter {0} \
CONFIG.c_enable_s2mm_frm_counter {0} \
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
CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {650.000000} \
CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.096154} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {150.000000} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {12.264151} \
CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {650.000000} \
CONFIG.PCW_CLK0_FREQ {100000000} \
CONFIG.PCW_CLK1_FREQ {150000000} \
CONFIG.PCW_CLK2_FREQ {12264151} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_EMIO_I2C0 {1} \
CONFIG.PCW_EN_EMIO_WP_SDIO0 {1} \
CONFIG.PCW_EN_ENET0 {1} \
CONFIG.PCW_EN_I2C0 {1} \
CONFIG.PCW_EN_PTP_ENET0 {1} \
CONFIG.PCW_EN_QSPI {1} \
CONFIG.PCW_EN_RST1_PORT {1} \
CONFIG.PCW_EN_SDIO0 {1} \
CONFIG.PCW_EN_UART1 {1} \
CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
CONFIG.PCW_FCLK_CLK2_BUF {TRUE} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {12.288} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {0} \
CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {0} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_IMPORT_BOARD_PRESET {./lib/xml/ZYBO_zynq_def.xml} \
CONFIG.PCW_MIO_16_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_16_PULLUP {disabled} \
CONFIG.PCW_MIO_16_SLEW {fast} \
CONFIG.PCW_MIO_17_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_17_PULLUP {disabled} \
CONFIG.PCW_MIO_17_SLEW {fast} \
CONFIG.PCW_MIO_18_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_18_PULLUP {disabled} \
CONFIG.PCW_MIO_18_SLEW {fast} \
CONFIG.PCW_MIO_19_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_19_PULLUP {disabled} \
CONFIG.PCW_MIO_19_SLEW {fast} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_1_PULLUP {disabled} \
CONFIG.PCW_MIO_1_SLEW {fast} \
CONFIG.PCW_MIO_20_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_20_PULLUP {disabled} \
CONFIG.PCW_MIO_20_SLEW {fast} \
CONFIG.PCW_MIO_21_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_21_PULLUP {disabled} \
CONFIG.PCW_MIO_21_SLEW {fast} \
CONFIG.PCW_MIO_22_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_22_PULLUP {disabled} \
CONFIG.PCW_MIO_22_SLEW {fast} \
CONFIG.PCW_MIO_23_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_23_PULLUP {disabled} \
CONFIG.PCW_MIO_23_SLEW {fast} \
CONFIG.PCW_MIO_24_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_24_PULLUP {disabled} \
CONFIG.PCW_MIO_24_SLEW {fast} \
CONFIG.PCW_MIO_25_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_25_PULLUP {disabled} \
CONFIG.PCW_MIO_25_SLEW {fast} \
CONFIG.PCW_MIO_26_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_26_PULLUP {disabled} \
CONFIG.PCW_MIO_26_SLEW {fast} \
CONFIG.PCW_MIO_27_IOTYPE {HSTL 1.8V} \
CONFIG.PCW_MIO_27_PULLUP {disabled} \
CONFIG.PCW_MIO_27_SLEW {fast} \
CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_28_PULLUP {disabled} \
CONFIG.PCW_MIO_28_SLEW {fast} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_29_PULLUP {disabled} \
CONFIG.PCW_MIO_29_SLEW {fast} \
CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_2_SLEW {fast} \
CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_30_PULLUP {disabled} \
CONFIG.PCW_MIO_30_SLEW {fast} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_31_PULLUP {disabled} \
CONFIG.PCW_MIO_31_SLEW {fast} \
CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_32_PULLUP {disabled} \
CONFIG.PCW_MIO_32_SLEW {fast} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_33_PULLUP {disabled} \
CONFIG.PCW_MIO_33_SLEW {fast} \
CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_34_PULLUP {disabled} \
CONFIG.PCW_MIO_34_SLEW {fast} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_35_PULLUP {disabled} \
CONFIG.PCW_MIO_35_SLEW {fast} \
CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_36_PULLUP {disabled} \
CONFIG.PCW_MIO_36_SLEW {fast} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_37_PULLUP {disabled} \
CONFIG.PCW_MIO_37_SLEW {fast} \
CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_38_PULLUP {disabled} \
CONFIG.PCW_MIO_38_SLEW {fast} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_39_PULLUP {disabled} \
CONFIG.PCW_MIO_39_SLEW {fast} \
CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_3_SLEW {fast} \
CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_40_PULLUP {disabled} \
CONFIG.PCW_MIO_40_SLEW {fast} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_41_PULLUP {disabled} \
CONFIG.PCW_MIO_41_SLEW {fast} \
CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_42_PULLUP {disabled} \
CONFIG.PCW_MIO_42_SLEW {fast} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_43_PULLUP {disabled} \
CONFIG.PCW_MIO_43_SLEW {fast} \
CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_44_PULLUP {disabled} \
CONFIG.PCW_MIO_44_SLEW {fast} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_45_PULLUP {disabled} \
CONFIG.PCW_MIO_45_SLEW {fast} \
CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_47_PULLUP {enabled} \
CONFIG.PCW_MIO_47_SLEW {slow} \
CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_48_PULLUP {disabled} \
CONFIG.PCW_MIO_48_SLEW {slow} \
CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_49_PULLUP {disabled} \
CONFIG.PCW_MIO_49_SLEW {slow} \
CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_4_SLEW {fast} \
CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_52_PULLUP {disabled} \
CONFIG.PCW_MIO_52_SLEW {slow} \
CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_53_PULLUP {disabled} \
CONFIG.PCW_MIO_53_SLEW {slow} \
CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_5_SLEW {fast} \
CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_6_SLEW {fast} \
CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_8_SLEW {fast} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#unassigned#Quad SPI Flash#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#unassigned#SD 0#UART 1#UART 1#unassigned#unassigned#Enet 0#Enet 0} \
CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_sclk#unassigned#qspi_fbclk#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#unassigned#cd#tx#rx#unassigned#unassigned#mdc#mdio} \
CONFIG.PCW_NAND_CYCLES_T_AR {0} \
CONFIG.PCW_NAND_CYCLES_T_CLR {0} \
CONFIG.PCW_NAND_CYCLES_T_RC {2} \
CONFIG.PCW_NAND_CYCLES_T_RR {0} \
CONFIG.PCW_NAND_CYCLES_T_WC {2} \
CONFIG.PCW_NOR_CS0_T_RC {2} \
CONFIG.PCW_NOR_CS0_T_WC {2} \
CONFIG.PCW_NOR_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_CS1_T_RC {2} \
CONFIG.PCW_NOR_CS1_T_WC {2} \
CONFIG.PCW_NOR_CS1_WE_TIME {2} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC {2} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC {2} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_RC {2} \
CONFIG.PCW_NOR_SRAM_CS1_T_WC {2} \
CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {2} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.242} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.210} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.209} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.243} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.110} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.053} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.034} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.095} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD0_GRP_WP_IO {EMIO} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
CONFIG.PCW_TRACE_INTERNAL_WIDTH {32} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {525.000000} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.176} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.159} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.162} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.187} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {20.6} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {20.6} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {20.6} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {20.6} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {27.85} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {22.87} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {22.9} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {29.9} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {-0.073} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {-0.034} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.03} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.082} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {27} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {22.8} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {24} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {30.45} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {525.000000} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K128M16 JT-125} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
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
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces axi_vdma_1/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs BTNs_4Bits/S_AXI/Reg] SEG_BTNs_4Bits_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs LEDs_4Bits/S_AXI/Reg] SEG_LEDs_4Bits_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41220000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs SWs_4Bits/S_AXI/Reg] SEG_SWs_4Bits_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dispctrl_0/S_AXI/S_AXI_reg] SEG_axi_dispctrl_0_S_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dispctrl_1/S_AXI/S_AXI_reg] SEG_axi_dispctrl_1_S_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_i2s_adi_0/S_AXI/S_AXI_reg] SEG_axi_i2s_adi_0_S_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43010000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_1/S_AXI_LITE/Reg] SEG_axi_vdma_1_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


