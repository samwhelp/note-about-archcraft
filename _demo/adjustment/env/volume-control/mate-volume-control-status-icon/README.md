
# mate-volume-control-status-icon

## Link

* [https://archlinux.org/packages/community/x86_64/mate-media/](https://archlinux.org/packages/community/x86_64/mate-media/)


## Install Package

install `mate-media` for use `mate-volume-control-status-icon`

``` sh
sudo pacman -Sy --needed mate-media
```

install `python-pyxdg` for `/usr/lib/openbox/openbox-xdg-autostart`

```
sudo pacman -Sy --needed python-pyxdg
```

## Config File Path

### Autostart

| PATH | Difference |
| --- | --- |
| /etc/xdg/autostart/mate-volume-control-status-icon.desktop | `OnlyShowIn=MATE;` |
| [~/.config/autostart/mate-volume-control-status-icon.desktop](config/mate-volume-control-status-icon/autostart/mate-volume-control-status-icon.desktop) | `OnlyShowIn=MATE;OPENBOX;` |

> `OPENBOX` must `all uppercase` on `OnlyShowIn`

> install `python-pyxdg` for `/usr/lib/openbox/openbox-xdg-autostart`

run

``` sh
grep 'OnlyShowIn' '/etc/xdg/autostart/mate-volume-control-status-icon.desktop'
```

show

```
OnlyShowIn=MATE;
```

run

``` sh
grep 'OnlyShowIn' "$HOME/.config/autostart/mate-volume-control-status-icon.desktop"
```

show

```
OnlyShowIn=MATE;OPENBOX;
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
