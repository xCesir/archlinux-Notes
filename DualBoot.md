# Dual Boot

## install Windows after Linux

### Linux boot manager vanished

When installing Windows or after updates, Windows typically deletes the Linux boot EFI vars and invalidates the TPM. Decrypt the bootloader using the recovery key, then follow these steps to add the Linux bootloader EFI variables.

### diskpart (mount /boot to X:)

Microsoft DiskPart-Version 10.0.26100.1150

Copyright (C) Microsoft Corporation.
Auf Computer: SIDNEY-DESKTOP
DISKPART> list volume

  Volume ###  Bst  Bezeichnung  DS     Typ         Größe    Status     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
  Volume 0     C                NTFS   Partition    929 GB  Fehlerfre  Startpar
  Volume 1                      NTFS   Partition    751 MB  Fehlerfre  Versteck
  Volume 2                      FAT32  Partition   1024 MB  Fehlerfre  System

DISKPART> select volume 2

Volume 2 is now the selected volume.

DISKPART> assign letter X

The drive letter or the provisioning point has been assigned.


DISKPART>

### Terminal (admin) to set EFI variables
bcdedit /set '{bootmgr}' path \EFI\systemd\systemd-bootx64.efi 

### last
Reboot and the Linux boot manager should be the primary boot manager by default.
