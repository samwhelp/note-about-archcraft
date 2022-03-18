---
title: GRUB Boot ISO
nav_order: 1020
has_children: false
parent: 入門
---


# GRUB Boot ISO


## 範例

| GRUB Boot ISO 範例 | 設定檔路徑 | 是否需要執行 update-grub |
| --- | --- | --- |
| demo_40_custom / [21.06](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Archcraft/21.06) | [/etc/grub.d/40_custom](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_40_custom/Archcraft/21.06/40_custom) | 修改後，需要執行 `sudo update-grub` |
| demo_41_custom / [21.06](https://github.com/samwhelp/note-about-grub/tree/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Archcraft/21.06) | [/boot/grub/custom.cfg](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/prototype/boot_iso/demo_41_custom/Archcraft/21.06/custom.cfg) | 修改後，**不需要**執行 `sudo update-grub` |


## GRUB Menu Entry / Boot ISO 樣板


```
menuentry "Archcraft Openbox ISO" --class Archcraft {
	set iso_file="/opt/iso/archcraft/openbox/archcraft-2022.02.02-x86_64.iso"
	search --no-floppy -f --set=iso_partition $iso_file
	probe -u $iso_partition --set=iso_partition_uuid
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="quiet splash vt.global_cursor_default=0 loglevel=2 rd.systemd.show_status=false rd.udev.log-priority=3 sysrq_always_enabled=1 cow_spacesize=2G"
	linux (loop)/arch/boot/x86_64/vmlinuz-linux img_dev=$img_dev img_loop=$iso_file $boot_option
	initrd (loop)/arch/boot/intel-ucode.img (loop)/arch/boot/amd-ucode.img (loop)/arch/boot/x86_64/initramfs-linux.img
}
```

## See Also

* Grub 探索筆記 / [GRUB Boot ISO 範例](https://samwhelp.github.io/note-about-grub/read/howto/boot_iso.html)
