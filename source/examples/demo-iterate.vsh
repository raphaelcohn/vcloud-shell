#!/usr/bin/env vsh

defaults_format_separator=$'\x01'
defaults_format_headings=no-heading

echo "Organisations"
api links orgs | while IFS=$'\x01' read -r href mimeType name
do
	ORGANISATION="$name"
	echo " |- ${ORGANISATION}"
	echo "     |- VDCs"
	api links-vdcs admin "$ORGANISATION" | while IFS=$'\x01' read -r href mimeType name
	do
		VDC="$name"
		echo "     |   |- ${VDC}"
		
		api none vdc "$ORGANISATION" "$VDC"
		
		source <(format id-bash vdc "$download")
		echo "     |   |   |- id  $vdc_id"
		echo "     |   |   |- Description  $vdc_Description"
		echo "     |   |   |- status  $vdc_status"
		echo "     |   |   |- Allocation Model  $vdc_AllocationModel"
		echo "     |   |   |- NIC Quota  $vdc_NicQuota"
		echo "     |   |   |- Network Quota  $vdc_NetworkQuota"
		echo "     |   |   |- Used Network Count  $vdc_UsedNetworkCount"
		echo "     |   |   |- VM Quota  $vdc_VmQuota"
		echo "     |   |   |- Is Enabled  $vdc_IsEnabled"
		echo "     |   |   |- CPU Allocated  $vdc_ComputeCapacity_Cpu_Allocated $vdc_ComputeCapacity_Cpu_Units"
		echo "     |   |   |- CPU Limit  $vdc_ComputeCapacity_Cpu_Limit $vdc_ComputeCapacity_Cpu_Units"
		echo "     |   |   |- CPU Reserved  $vdc_ComputeCapacity_Cpu_Reserved $vdc_ComputeCapacity_Cpu_Units"
		echo "     |   |   |- CPU Used  $vdc_ComputeCapacity_Cpu_Used $vdc_ComputeCapacity_Cpu_Units"
		echo "     |   |   |- CPU Overhead  $vdc_ComputeCapacity_Cpu_Overhead $vdc_ComputeCapacity_Cpu_Units"
		echo "     |   |   |- Memory Allocated  $vdc_ComputeCapacity_Memory_Allocated $vdc_ComputeCapacity_Memory_Units"
		echo "     |   |   |- Memory Limit  $vdc_ComputeCapacity_Memory_Limit $vdc_ComputeCapacity_Memory_Units"
		echo "     |   |   |- Memory Reserved  $vdc_ComputeCapacity_Memory_Reserved $vdc_ComputeCapacity_Memory_Units"
		echo "     |   |   |- Memory Used  $vdc_ComputeCapacity_Memory_Used	 $vdc_ComputeCapacity_Memory_Units"
		echo "     |   |   |- Memory Overhead  $vdc_ComputeCapacity_Memory_Overhead $vdc_ComputeCapacity_Memory_Units"
		
		echo "     |   |   |- Supported VMware Hardware Versions"
		format capabilities vdc "$download" | while IFS=$'\x01' read -r supportedVmwareHardwareVersion
		do
			echo "     |   |   |   |- $supportedVmwareHardwareVersion"
		done
		
		echo "     |   |   |- Networks"
		format links-networks vdc "$download" | while IFS=$'\x01' read -r href mimeType name
		do
			NETWORK="$name"
			echo "     |   |   |   |- $NETWORK"
			api none vdc_network "$ORGANISATION" "$VDC" "$NETWORK"
			
			source <(format id-bash vdc_network "$download")
			echo "     |   |   |   |   |- id  ${vdc_network_id}"
			echo "     |   |   |   |   |- Description  ${vdc_network_Description}"
			echo "     |   |   |   |   |- Status  ${vdc_network_status}"
			echo "     |   |   |   |   |- Is Shared  ${vdc_network_IsShared}"
			echo "     |   |   |   |   |- Fencing  ${vdc_network_Configuration_FenceMode}"
			echo "     |   |   |   |   |- Retain Net Info Across Deployments  ${vdc_network_Configuration_RetainNetInfoAcrossDeployments}"
			
			format settings vdc_network "$download" | while IFS=$'\x01' read -r IsInherited Gateway Netmask Dns1 IsEnabled StartAddress EndAddress
			do
				echo "     |   |   |   |   |- Settings"
				echo "     |   |   |   |   |   |- Is Inherited ${IsInherited}"
				echo "     |   |   |   |   |   |- Gateway ${Gateway}"
				echo "     |   |   |   |   |   |- Netmask ${Netmask}"
				echo "     |   |   |   |   |   |- Dns1 ${Dns1}"
				echo "     |   |   |   |   |   |- Is Enabled ${IsEnabled}"
				echo "     |   |   |   |   |   |- Start Address ${StartAddress}"
				echo "     |   |   |   |   |   |- End Address ${EndAddress}"
			done
			
			echo "     |   |   |   |   |- Allocated IP Addresses"
			api settings vdc_network_allocatedAddresses "$ORGANISATION" "$VDC" "$NETWORK" | while IFS=$'\x01' read -r href mimeType rel name ipAddress isDeployed allocationType
			do
				echo "     |   |   |   |   |   |- IP Address ${ipAddress}"
				echo "     |   |   |   |   |   |   |- Is Deployed ${isDeployed}"
				echo "     |   |   |   |   |   |   |- Allocation Type ${allocationType}"
			done
			
			
			echo "     |   |   |   |   |- Metadata"
			api settings vdc_network_metadata "$ORGANISATION" "$VDC" "$NETWORK" | while IFS=$'\x01' read -r key value xsiType
			do
				echo "     |   |   |   |   |   |- $key"
				echo "     |   |   |   |   |   |   |- Value $value"
				echo "     |   |   |   |   |   |   |- XSI Type $xsiType"
			done
		done
		
		echo "     |   |   |- Storage Profiles"
		format links-storage-profiles vdc "$download" | while IFS=$'\x01' read -r href mimeType name
		do
			echo "     |   |   |   |- $name"
		done
		
		echo "     |   |   |- Disks"
		format links-resource-entities vdc "$download" | while IFS=$'\x01' read -r href mimeType name
		do
			if [ "$mimeType" = "application/vnd.vmware.vcloud.disk+xml" ]; then
				DISK="$name"
				echo "     |   |   |   |- ${DISK}"
				#TODO: api none vdc_disk "$ORGANISATION" "$VDC" "$DISK"
			fi
		done
		
		echo "     |   |   |- Media"
		format links-resource-entities vdc "$download" | while IFS=$'\x01' read -r href mimeType name
		do
			if [ "$mimeType" = "application/vnd.vmware.vcloud.media+xml" ]; then
				MEDIA="$name"
				echo "     |   |   |   |- ${MEDIA}"
				api none vdc_media "$ORGANISATION" "$VDC" "$MEDIA"
				
				source <(format id-bash vdc_media "$download")
				echo "     |   |   |   |   |- id  ${vdc_media_id}"
				echo "     |   |   |   |   |- Description  ${vdc_media_Description}"
				echo "     |   |   |   |   |- Status  ${vdc_media_status}"
				echo "     |   |   |   |   |- Image Type  ${vdc_media_imageType}"
				echo "     |   |   |   |   |- VDC Storage Profile  ${vdc_media_VdcStorageProfile_name}"
				echo "     |   |   |   |   |- Owner  ${vdc_media_Owner_User_name}"
				echo "     |   |   |   |   |- Metadata"
				
				api settings vdc_media_metadata "$ORGANISATION" "$VDC" "$MEDIA" | while IFS=$'\x01' read -r key value xsiType
				do
					echo "     |   |   |   |   |   |- $key"
					echo "     |   |   |   |   |   |   |- Value $value"
					echo "     |   |   |   |   |   |   |- XSI Type $xsiType"
				done
			fi
		done
		
		echo "     |   |   |- vAppTemplates"
		format links-resource-entities vdc "$download" | while IFS=$'\x01' read -r href mimeType name
		do
			if [ "$mimeType" = "application/vnd.vmware.vcloud.vAppTemplate+xml" ]; then
				VAPP_TEMPLATE="$name"
				echo "     |   |   |   |- ${VAPP_TEMPLATE}"
				api none vdc_vAppTemplate "$ORGANISATION" "$VDC" "$VAPP_TEMPLATE"
				
				format links vdc_vAppTemplate "$download" | while IFS=$'\x01' read -r href mimeType name
				do
					echo "     |   |   |   |   |- ${href}"
				done
			fi
		done
		
		echo "     |   |   |- vApps"
		format links-resource-entities vdc "$download" | while IFS=$'\x01' read -r href mimeType name
		do
			if [ "$mimeType" = "application/vnd.vmware.vcloud.vApp+xml" ]; then
				VAPP="$name"
					echo "     |   |   |   |- ${VAPP}"
				api none vdc_vApp "$ORGANISATION" "$VDC" "$VAPP"
				
				cat "$download" | while IFS= read -r xmlLine
				do
					echo "     |   |   |   |   |- $xmlLine"
				done
			fi
		done
		
	done
done
