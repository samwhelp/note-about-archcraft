
# xfce4-notifyd

## Link

* [https://archlinux.org/packages/extra/x86_64/xfce4-notifyd/](https://archlinux.org/packages/extra/x86_64/xfce4-notifyd/)


## Install Package

`xfce4-notifyd` is used instead of dunst

``` sh
sudo pacman -Sy --needed xfce4-notifyd
```

install `python-pyxdg` for `/usr/lib/openbox/openbox-xdg-autostart`

```
sudo pacman -Sy --needed python-pyxdg
```

## Config File Path

### Setting

| PATH | Difference |
| --- | --- |
| [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml](config/xfce4-notifyd/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml) |

> GUI Tool: [xfce4-notifyd-config](https://docs.xfce.org/apps/xfce4-notifyd/preferences)

### Autostart

| PATH | Difference |
| --- | --- |
| /etc/xdg/autostart/xfce4-notifyd.desktop | `OnlyShowIn=XFCE;` |
| [~/.config/autostart/xfce4-notifyd.desktop](config/xfce4-notifyd/autostart/xfce4-notifyd.desktop) `OnlyShowIn=XFCE;OPENBOX;` |

> `OPENBOX` must `all uppercase` on `OnlyShowIn`

> install `python-pyxdg` for `/usr/lib/openbox/openbox-xdg-autostart`


run

``` sh
grep 'OnlyShowIn' '/etc/xdg/autostart/xfce4-notifyd.desktop'
```

show

```
OnlyShowIn=XFCE;
```

run

``` sh
grep 'OnlyShowIn' "$HOME/.config/autostart/xfce4-notifyd.desktop"
```

show

```
OnlyShowIn=XFCE;OPENBOX;
```



## Howto


### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```
