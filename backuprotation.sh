#!/bin/bash
<< readme
script for backup and rotation of files
readme


sourcepath=$1
backuppath=$2
timestamp=$( date '+%y%m%d-%H%M%S' )

function usage {

echo "Kindly pass parameter for executing the script"

}

if [ $# -eq 0 ]; then 
	usage
fi
function backup {
zip -r "${backuppath}/backup_${timestamp}.zip" ${sourcepath} >/dev/null
if [ $? -eq 0 ]; then
	echo "back is generated for ${timestamp}"
fi

}


function rotation {
	backup=($(ls -t "${backuppath}/backup_"*.zip 2>/dev/null))
	echo "${backup[@]}"
	if [ "${#backup[@]}"  -gt 3 ]; then
		echo " performing rotation for 3 days"
		removebackup=("${backup[@]:3}")
		echo "${removebackup[@]}"
		for backup in "${removebackup[@]}";
		do 
	        	rm -f ${backup}
		done



	fi
}

backup
rotation
