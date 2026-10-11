#!/bin/bash
set -e

echo "=== 1. Копируем конфиг из работающего ядра и обновляем под новые исходники ==/bin"
cd /usr/src/linux
zcat /proc/config.gz | sudo tee .config > /dev/null
sudo make LLVM=1 olddefconfig

echo "=== 2. Компилируем ядро и модули Clang/LLVM ==="
sudo make LLVM=1 -j$(nproc)

echo "=== 3. Устанавливаем модули и ядро ==="
sudo make LLVM=1 modules_install
sudo make LLVM=1 install

echo "=== 4. Пересобираем внешние модули ==="
sudo emerge @module-rebuild

echo "=== 5. Обновляем initramfs через dracut ==="
KERNEL_VER=$(make kernelrelease)
sudo dracut --force --kver "$KERNEL_VER"

echo "=== 6. GRUB ==="
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "=== Ядро $KERNEL_VER успешно обновлено ==="
