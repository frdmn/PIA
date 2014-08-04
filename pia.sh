#!/bin/bash

# Source settings.sh file
. ./settings.sh

# Check for set settings
if [[ -z "$vpnUser" ]]; then
	echo 'Error: No "$vpnUser" variable found'
	exit 1
fi

if [[ -z "$vpnPass" ]]; then
	echo 'Error: No "$vpnPass" variable found'
	exit 1
fi

# Count VPN tunnels to add
echo "Attempting to add '${#piaNetworks[@]}' PrivateInternetAccess VPNs"

# For each network, execute addVPN.scpt
for network in "${piaNetworks[@]}"; do
	printf "Processing \"${network}\"... "
	networkName=${network%%.*}
	osascript ./addVPN.scpt "PIA (${networkName})" "${network}" "${vpnUser}" "${vpnPass}" 
	printf "done\n"
done
exit 0