#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="auraos"
iso_label="AURAOS_$(date +%Y%m)"
iso_publisher="AuraOS <https://auraos.dev>"
iso_application="AuraOS Live Desktop"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/etc/sudoers.d/99_auraos"]="0:0:440"
  ["/usr/local/bin/auraos-firstboot"]="0:0:755"
)
