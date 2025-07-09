

################################################################################
### Head: Master / Sys / Kernel
##

sys_kernel_package_name_find () {

	sys_kernel_package_name_find_via_apt_cache

	#sys_kernel_package_name_find_via_apt

}

sys_kernel_package_name_find_via_apt_cache () {

	apt-cache search linux-generic-hwe-* | awk -F ' - ' '/linux-generic-hwe-/ {print $1}' | sort | head -n 1

	return 0
}

sys_kernel_package_name_find_via_apt () {

	apt search linux-generic-hwe-* 2> /dev/null | awk -F'/' '/linux-generic-hwe-/ {print $1}' | sort | head -n 1

	return 0
}

##
### Tail: Master / Sys / Kernel
################################################################################
