#!/bin/bash

# Source settings.sh file
. ./settings.sh

echo "Attempting to add '${#piaNetworks[@]}' PrivateInternetAccess VPNs"

# For each network, execute addVPN.scpt
for network in "${piaNetworks[@]}"
do
	printf "Processing \"${network}\"... "
	networkName=${network%%.*}
	osascript ./addVPN.scpt "PIA (${networkName})" "${network}" "${vpnUser}" "${vpnPass}" 
	printf "done\n"
done