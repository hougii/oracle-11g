#!/usr/bin/env bash
set -e
source /assets/colorecho
trap "echo_red '******* ERROR: Something went wrong.'; exit 1" SIGTERM
trap "echo_red '******* Caught SIGINT signal. Stopping...'; exit 2" SIGINT

if [ ! -d "/install/database" ]; then
	echo_red "Installation files not found. Unzip installation files into mounted(/install) folder,and use this oracle version:(11.2.0.4.0)"
	exit 1
fi

echo_yellow "Installing Oracle Database 11g (11.2.0.4.0)"

su oracle -c "/install/database/runInstaller -silent -ignorePrereq -waitforcompletion -responseFile /assets/db_install.rsp"
/u01/oracle/oraInventory/orainstRoot.sh
/u01/oracle/product/11.2.0/db_1/root.sh

