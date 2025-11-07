# troubleshooting

## Kleopatra
Currently, under Gnome, Kleopatra may not start after the latest update, as described in this [forum post](https://bbs.archlinux.org/viewtopic.php?id=296219). The solution is to start it via the console with the following command:
````
export QT_QPA_PLATFORM=XCB && kleopatra
````
oder permanente variable setzen
`QT_QPA_PLATFORM=xcb` in `~/.zshenv`

https://bbs.archlinux.org/viewtopic.php?id=296219
https://bugs.gentoo.org/933441

## fonts
````
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
````

## Laptop Bluetooth not working
It is often the case that the service is not activated.

````
systemctl enable bluetooth
systemctl start bluetooth
````


## ASPM

So, FINALLY, i made it work by permanently setting (via bootloader) either one of the parameters below, to the kernel cmdline:
````
pcie_aspm.policy=powersave
````
````
pcie_aspm.policy=performance
````
Seems that the default policy is to have it read/set directly from the bios, but obviously that doesn't always work.

[Post](https://bbs.archlinux.org/viewtopic.php?id=260589)
[RedHeat](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/power_management_guide/aspm)

oder:
````
pcie_aspm=off acpi_enforce_resources=lax
````

## [Possibly missing firmware for module XXXX](https://wiki.archlinux.org/title/Mkinitcpio#Possibly_missing_firmware_for_module_XXXX)
````
yay -S mkinitcpio-firmware
````

# AppImage require FUSE to run
```
sudo pacman -S fuse2
```
