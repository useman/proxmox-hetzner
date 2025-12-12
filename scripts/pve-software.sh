# Update system packages
apt update && apt -y upgrade && apt -y autoremove && pveupgrade && pveam update

# Install useful utilities
apt install -y curl libguestfs-tools unzip iptables-persistent net-tools

# Remove subscription notice
sed -Ezi.bak "s/(Ext.Msg.show\(\{\s+title: gettext\('No valid sub)/void\(\{ \/\/\1/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service

