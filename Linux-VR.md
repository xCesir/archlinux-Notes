# VR
## Resource
[Arch-Wiki](https://wiki.archlinux.org/title/Virtual_reality)
[Linux VR Adventures Wiki](https://lvra.gitlab.io/)
## WiVRn
```zsh
flatpak install io.github.wivrn.wivrn
```
```zsh
sudo systemctl enable --now avahi-daemon
```
```zsh
flatpak override --user --filesystem=xdg-config/openxr:ro com.valvesoftware.Steam
flatpak override --user --filesystem=xdg-config/openvr:ro com.valvesoftware.Steam
flatpak override --user --filesystem=xdg-run/wivrn com.valvesoftware.Steam
flatpak override --user --filesystem=/var/lib/flatpak/app/io.github.wivrn.wivrn:ro com.valvesoftware.Steam
```

```zsh
flatpak override --user --env=PRESSURE_VESSEL_FILESYSTEMS_RW=/run/user/1000/wivrn/comp_ipc:/var/lib/flatpak/app/io.github.wivrn.wivrn com.valvesoftware.Steam
```
### firewall
5353/UDP and 9757/UDP+TCP

## wlx-overlay-s
```zsh
yay -S wlx-overlay-s-git
```

