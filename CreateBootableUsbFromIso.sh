set -x
sudo wipefs -a /dev/sda

sudo parted /dev/sda
# GNU Parted 3.6
# /dev/sda wird verwendet
# Willkommen zu GNU Parted! Rufen Sie »help« auf, um eine Liste der verfügbaren Befehle zu erhalten.
# (parted) mklabel gpt
# (parted) mkpart BOOT fat32 0% 1GiB
# (parted) mkpart INSTALL ntfs 1GiB 10GiB
# (parted) quit

sudo mkfs.vfat -n BOOT /dev/sda1
sudo mkfs.ntfs --quick -L INSTALL /dev/sda2

udisksctl loop-setup -f ~/Downloads/Win11_24H2_German_x64.iso
udisksctl mount -b /dev/loop0

udisksctl mount -b /dev/sda1
rsync -r --progress --exclude sources --delete-before \
  /run/media/ego/CCCOMA_X64FRE_DE-DE_DV9/ \
  /run/media/$USER/BOOT/
mkdir /run/media/$USER/BOOT/sources
cp /run/media/ego/CCCOMA_X64FRE_DE-DE_DV9/sources/boot.wim /run/media/$USER/BOOT/sources/
sync
umount /run/media/$USER/BOOT

udisksctl mount -b /dev/sda2
rsync -r --progress --delete-before /tmp/windows/iso/ /run/media/$USER/INSTALL/
sync
cp ~/Downloads/autounattended.xml /run/media/$USER/INSTALL/
sync

umount /run/media/$USER/INSTALL/
umount /run/media/ego/CCCOMA_X64FRE_DE-DE_DV9/

udisksctl power-off -b /dev/sda

set +x
