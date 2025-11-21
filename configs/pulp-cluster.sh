#! /bin/bash

export PULPOS_TARGET=pulp_cluster
export CONFIG_NO_FC=1

if [  -n "${ZSH_VERSION:-}" ]; then 
	DIR="$(readlink -f -- "${(%):-%x}")"
	DIRNAME="$(dirname $DIR)"
	PULP_SDK_HOME=$(dirname $DIRNAME)
	export PULP_SDK_HOME
	#echo $(dirname "$(readlink -f ${(%):-%N})")
else
	export PULP_SDK_HOME="$(dirname $(dirname "$(readlink -f "${BASH_SOURCE[0]}")"))"
fi

export TARGET_CHIP_FAMILY="PULP"
export TARGET_CHIP="PULP_CLUSTER"
export TARGET_NAME="pulp_cluster"

export PULPOS_BOARD=pulp_cluster
export PULPOS_BOARD_VERSION=pulp_cluster
export PULPOS_BOARD_PROFILE=pulp_cluster
export PULPOS_TARGET=pulp_cluster
export PULPOS_SYSTEM=pulp_cluster
export GAPY_TARGET=pulp_cluster
export GAPY_V2_TARGET=pulp_cluster

export PULPOS_MODULES="$PULP_SDK_HOME/rtos/pulpos/pulp $PULP_SDK_HOME/rtos/pmsis/pmsis_bsp"

source $PULP_SDK_HOME/configs/common.sh
