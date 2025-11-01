# Set GPU
When using multiple dedicated GPUs on Linux, Wayland may recognize the wrong GPU as the primary GPU (`GPU0`). In general, a reference to the use of the GPU can be set in `/etc/environment` or as an argument when starting the program. Sometimes a program must be separately assigned to the correct GPU using `VK_DRIVER_FILES`, `DRI_PRIME` or `MESA_VK_DEVICE_SELECT`.
To correct this, proceed as follows:

## get [Mesa device](https://wiki.archlinux.org/title/Vulkan#Switching_between_devices)
It should look like this; if any packages are missing, check the link in the header.
```bash
$ MESA_VK_DEVICE_SELECT=list vulkaninfo
selectable devices:
  GPU 0: 8086:56a5 "Intel(R) Arc(tm) A380 Graphics (DG2)" discrete GPU 0000:06:00.0
  GPU 1: 1002:744c "AMD Radeon RX 7900 XTX (RADV NAVI31)" discrete GPU 0000:10:00.0
  GPU 2: 1002:744c "AMD Radeon RX 7900 XTX" discrete GPU 0000:10:00.0
  GPU 3: 1002:744c "AMD Radeon RX 7900 XTX" discrete GPU 0000:10:00.0
  GPU 4: 10005:0 "llvmpipe (LLVM 19.1.7, 256 bits)" CPU 0000:00:00.0
```

## set [Mesa Environment Variables](https://docs.mesa3d.org/envvars.html)
## MESA_VK_DEVICE_SELECT
```bash
MESA_VK_DEVICE_SELECT=1002:744c
```

## [DRI_PRIME](https://docs.mesa3d.org/envvars.html#envvar-DRI_PRIME)
### N
selects the Nth non-default GPU (N > 0)
```bash
DRI_PRIME=1
```

### ID
selects the first GPU matching these ids
```bash
DRI_PRIME=1002:744c
```

### PCIe-Bus
selects the GPU connected to this PCIe bus
```bash
DRI_PRIME=pci-0000_10_00_0
```

For Vulkan it’s possible to append !, in which case only the selected GPU will be exposed to the application (e.g.: DRI_PRIME=1!).

## set ICD to RADV
to re-enable the ICD loader method set in `/etc/environment`

```bash
DISABLE_LAYER_AMD_SWITCHABLE_GRAPHICS_1=1 
```
## set ICD to RADV
set AMD_VULKAN_ICD ? even usefull anymore after eol of amdvlk
```bash
AMD_VULKAN_ICD=RADV
```

### set VK_DRIVER_FILES to RADV
```bash
VK_DRIVER_FILES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
```


