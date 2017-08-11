#!/bin/bash -e
#
# Copyright (C) 2017 by Yujiang Lin <linyujiang@hotmail.com>
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later
# version.

# => Sometimes you may want to move the checking into the shell script itself.
# This is also possible.  Add the following to the start of the script to only
# allow root or sudo access:
if [ `whoami` != root ]; then
    error_exit "Please run this script as root or using sudo"
fi

# => To make it so only non-root users should run the script do this:
#if [ `whoami` = root ]; then
#	error_exit "Please do not run this script as root or using sudo"
#fi

# => Filename of the running script.
script_name="$(basename ${BASH_SOURCE})"

# => Directory containing the running script.
script_dir="$(cd $(dirname ${BASH_SOURCE}) && pwd)"

# => Redirect output to log from inside script
log_file=${script_dir}/${script_name%.*}.log
exec &> >(tee "$log_file")

# => FPGA工程名称
# 注：需要根据实际情况进行修改
export ZN_FPGA_NAME=zybo_bsd

# => FPGA工程路径
# 注：需要根据实际情况进行修改
export ZN_FPGA_DIR=${script_dir}/${ZN_FPGA_NAME}

# => Current Vivado/LabTool/SDK Version (Example:2016.4).
export VIVADO_VERSION=${VIVADO_VERSION:-2016.4}

# => Set Xilinx installation path (Default: /opt/Xilinx/).
# 注：需要根据实际情况进行修改
export XILINX=/mnt/workspace/toolchains/${VIVADO_VERSION}

# => Vivado Design Suite (optional for project creation and programming): %XILDIR%/Vivado/%VIVADO_VERSION%/
# 注：需要根据实际情况进行修改
export XILINX_VIVADO=${XILINX}/Vivado/${VIVADO_VERSION}

# => The environment variables are written to settings[32|64].(c)sh
# To launch the Xilinx tools, first source the settings script:
source ${XILINX_VIVADO}/settings64.sh
# C-shell 64 bit environment...
# source ${XILINX_VIVADO}/settings64.csh

# Fixed: https://forums.xilinx.com/t5/Installation-and-Licensing/librdi-common-not-found-executing-vivado/td-p/536991
# I've a "solution" to librdi_common* and actually some of the other missing libraries.
if grep "openSUSE Leap 42.1" /etc/issue >/dev/null 2>&1; then
    if [ -n "${LD_LIBRARY_PATH}" ]; then
        export LD_LIBRARY_PATH=${XILINX_VIVADO}/lib/lnx64.o:$LD_LIBRARY_PATH
    else
        export LD_LIBRARY_PATH=${XILINX_VIVADO}/lib/lnx64.o
    fi
fi

# => 打开vivado开发环境
# 注：需要根据实际情况进行修改
# This will ensure that the .jou and .log files are placed in the project directory.
cd ${ZN_FPGA_DIR}
# open the Vivado IDE
if [ -f "${ZN_FPGA_DIR}/${ZN_FPGA_NAME}.xpr" ]; then
    vivado ${ZN_FPGA_DIR}/${ZN_FPGA_NAME}.xpr

else
    vivado
fi

# vim: set ts=4 sw=4 tw=0 et :
