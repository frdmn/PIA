#!/bin/bash

# Adjust the PIA.com credentials below
vpnUser="x12345678"
vpnPass="123456789"

# Set array of PIA network locations
piaNetworks=(
	'us-midwest.privateinternetaccess.com' 
	'us-east.privateinternetaccess.com' 
	'us-texas.privateinternetaccess.com' 
	'us-west.privateinternetaccess.com' 
	'us-california.privateinternetaccess.com' 
	'us-seattle.privateinternetaccess.com' 
	'us-florida.privateinternetaccess.com' 
	'ca.privateinternetaccess.com' 
	'ca-toronto.privateinternetaccess.com' 
	'uk-london.privateinternetaccess.com' 
	'uk-southampton.privateinternetaccess.com' 
	'swiss.privateinternetaccess.com' 
	'nl.privateinternetaccess.com' 
	'sweden.privateinternetaccess.com' 
	'france.privateinternetaccess.com' 
	'germany.privateinternetaccess.com' 
	'romania.privateinternetaccess.com' 
	'hk.privateinternetaccess.com'
)

echo "Attempting to add '${#piaNetworks[@]}' PrivateInternetAccess VPNs"

# For each network, execute addVPN.scpt
for network in "${piaNetworks[@]}"
do
	printf "Processing \"${network}\"... "
	networkName=${network%%.*}
	osascript ./addVPN.scpt "PIA (${networkName})" "${network}" "${vpnUser}" "${vpnPass}" 
	printf "done\n"
done