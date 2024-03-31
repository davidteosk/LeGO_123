#!/usr/bin/bash

echo "Fixing EGPU SPEED"
# add egpu-pcie3speed.conf to /etc/modprobe.d/
sudo cat <<EOF > "/etc/modprobe.d/egpu-pcie3speed.conf"
options amdgpu pcie_gen_cap=0x40000
EOF
sudo cat <<EOF > "/etc/dracut.conf.d/egpu-pcie3speed.conf"
install_items+=" /etc/modprobe.d/egpu-pcie3speed.conf "
EOF

echo "Fixing HDMI AUDIO"
# add alsa-base.conf to /etc/modprobe.d/
sudo cat <<EOF > "/etc/modprobe.d/alsa-base.conf"
options snd_hda_intel power_save=0 model=auto vid=8086 pid=8ca0 snoop=0
EOF
sudo cat <<EOF > "/etc/dracut.conf.d/alsa-base.conf"
install_items+=" /etc/modprobe.d/alsa-base.conf "
EOF

echo "REBUIDING INITRAMFS"
sudo touch /etc/bazzite/initramfs/rebuild

echo "Done. This fixes to kernel loading modules [amdgpu] and [snd_hda_intel]"
echo "Please [systemctl reboot] to enable this changes."
echo "=== IMPORTANT! READ THIS ---"
echo " DURING REBOOT, IN GRUB, SELECT OSTREE:0"
echo " THE SYSTEM WILL REBUILD/UPDATING INITRAMFS"
echo " AFTER REBUILDING/UPDATING INITRAMFS, THE SYSTEM WILL REBOOT AGAIN. THIS IS NORMAL!!! "
echo " AFTER REBOOT, IN GRUB, SELECT OSTREE:0 AGAIN === "
echo " IT SHOULD BOOT TO BAZZITE AGAIN..."
echo "=== FINGER CROSS: IF BAZZITE CRASHES OR FAILED TO REBOOT, PLEASE RESTART USING GRUB OSTREE: 1 TO RECOVER ==="
