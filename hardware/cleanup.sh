#!/bin/bash -e
###
# Run the following command to change permissions of this 'cleanup' file if
# needed:
# chmod u+x cleanup.sh
###
# => Directory containing the running script.
dir="$(cd $(dirname ${BASH_SOURCE}) && pwd)"

rm -rf ${dir}/{*.log,*.jou,.Xil}
rm -rf ${dir}/zybo_bsd/{*.log,*.jou,.Xil}
rm -rf ${dir}/zybo_bsd/{zybo_bsd.cache,zybo_bsd.runs,zybo_bsd.sdk}

