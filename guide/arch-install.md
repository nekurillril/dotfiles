# ARCHLINUX

### Установка Archlinux
Делим диск на 3 раздела используя ```cfdisk /dev/sda```
(gpt используй)
__3 раздела__
|Devices|Size|Type|
|-|-|-|
|/dev/sda1|300m|EFI|
|/dev/sda2|1g|Linux swap|
|/dev/sda3|остатки|Linux|

Форматируем диски опираясь на ```lsblk``` (цифры могут меняться в зависимости от порядка разделов)

```
mkfs.fat -F32 /dev/sda1 #EFI
mkswap /dev/sda2 # swap
swapon /dev/sda2 # swap
mkfs.ext4 /dev/sda3 # система
```
Монтируем (цифры могут меняться в зависимости от порядка разделов)
```
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
```
Устанавливаем
```
pacstrap /mnt base linux linux-firmware sudo vim mc amd-ucode (intel-ucode) dhcpcd ntfs-3g
genfstab -L /mnt >> /mnt/etc/fstab
```
Проникаем внутрь
```
arch-chroot /mnt
passwd
```

### Добавляем юзера, настраиваем локали и другую дичь
Локаль
```
vim /etc/locale.gen

#en_US.UTF-8 UTF-8 #надо раскоментить
#ru_RU.UTF-8 UTF-8 #надо раскоментить

locale-gen
echo "LANG=ru_RU.UTF-8" > /etc/locale.conf

vim /etc/vconsole.conf
#вводим строки
KEYMAP=ru
FONT=cyr-sun16
```
Время
```
ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc
```
Имя ПК
```
echo [имя пк] > /etc/hostname
vim /etc/hosts
127.0.1.1 localhost.localdomain [имя пк]

useradd -m -g users -G wheel -s /bin/bash [Имя юзера]
passwd [Имя юзера]
```
Интернет
```
systemctl enable dhcpcd
```
Это шоб судо работало надо
```
vim /etc/sudoers
%wheel ALL=(ALL:ALL) ALL #надо раскоментить
```

###

### Установка grub 
```
pacman -S grub os-prober

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```
*Или так (если efi)*
```
pacman -S grub os-prober efibootmgr

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```
