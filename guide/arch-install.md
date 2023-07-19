#ARCHLINUX

### Установка Archlinux
```
cfdisk /dev/sda
```

__3 раздела__
* 300m под загрузку ef|EFI
* 1g под swap 82|Linux swap
* Все другое система 83|Linux

```
mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2
mkfs.ext4 /dev/sda3

mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

pacstrap /mnt base linux linux-firmware sudo vim mc amd-ucode (intel-ucode) dhcpcd ntfs-3g
genfstab -L /mnt >> /mnt/etc/fstab

arch-chroot /mnt
passwd
```

### Установка grub 
```
pacman -S grub os-prober

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```
*Или так (если efi)*
```
pacman -S grub os-prober efibootmgr
mkdir /boot/efi
mount /dev/sda1 /boot/efi
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi --removable
grub-mkconfig -o /boot/grub/grub.cfg
```

###Добавляем юзера, настраиваем локали и другую дичь
```
vim /etc/locale.gen

en_US.UTF-8 UTF-8 #надо раскоментить
ru_RU.UTF-8 UTF-8 #надо раскоментить

locale-gen
echo "LANG=ru_RU.UTF-8" > /etc/locale.conf

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtim
hwclock --systohc

echo PCname > /etc/hostname
vim /etc/hosts
127.0.1.1 localhost.localdomain PCname

useradd -m -g users -G wheel -s /bin/bash username
passwd username

systemctl enable dhcpcd

vim /etc/sudoers
%wheel ALL=(ALL:ALL) ALL #надо раскоментить
```

###
