#!/usr/bin/env bash

set -e
source /assets/colorecho
if [ ! -d "/u01/oracle/product/11.2.0/db_1" ]; then
	echo_yellow "Database is not installed. Installing this version(11.2.0.4.0) ..."
	/assets/install.sh
fi

su oracle -c "/assets/entrypoint_oracle.sh"

