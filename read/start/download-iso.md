---
title: 下載ISO檔
nav_order: 1010
has_children: false
parent: 入門
---


# 下載ISO檔


## 版本

| 版本 |
| --- |
| [Xfce](#xfce) |
| [Openbox](#openbox) |


## Xfce

* [https://github.com/archcraft-os/archcraft-xfce](https://github.com/archcraft-os/archcraft-xfce)

``` sh
wget -c 'https://github.com/archcraft-os/archcraft-xfce/releases/download/v21.06/archcraft-2021.06.20-x86_64.iso'
```


``` sh
wget -c 'https://github.com/archcraft-os/archcraft-xfce/releases/download/v21.06/archcraft-2021.06.20-x86_64.iso.sig'
wget -c 'https://github.com/archcraft-os/archcraft-xfce/releases/download/v21.06/archcraft-2021.06.20-x86_64.iso.sha256sum'
```


``` sh
gpg --recv-keys 7DC81F73
```

``` sh
gpg --verify archcraft-2021.06.20-x86_64.iso.sig
```

``` sh
sha256sum -c archcraft-2021.06.20-x86_64.iso.sha256sum
```



## Openbox

### 21.09

* [https://github.com/archcraft-os/releases](https://github.com/archcraft-os/releases)
* [https://github.com/archcraft-os/releases/releases/tag/v21.09](https://github.com/archcraft-os/releases/releases/tag/v21.09)
* [Archcraft v21.09 is here!](https://www.reddit.com/r/unixporn/comments/purk3o/oc_archcraft_v2109_is_here/)

``` sh
wget -c 'https://github.com/archcraft-os/releases/releases/download/v21.09/archcraft-2021.09.25-x86_64.iso'
```

``` sh
wget -c 'https://github.com/archcraft-os/releases/releases/download/v21.09/archcraft-2021.09.25-x86_64.iso.sig'
wget -c 'https://github.com/archcraft-os/releases/releases/download/v21.09/archcraft-2021.09.25-x86_64.iso.sha256sum'
```

``` sh
gpg --recv-keys 7DC81F73
```

``` sh
gpg --verify archcraft-2021.09.25-x86_64.iso.sig
```

``` sh
sha256sum -c archcraft-2021.09.25-x86_64.iso.sha256sum
```


### 21.06

* [https://github.com/archcraft-os/releases](https://github.com/archcraft-os/releases)
* [https://github.com/archcraft-os/releases/releases/tag/v21.06](https://github.com/archcraft-os/releases/releases/tag/v21.06)

``` sh
wget -c 'https://github.com/archcraft-os/releases/releases/download/v21.06/archcraft-2021.06.06-x86_64.iso'
```

``` sh
wget -c 'https://github.com/archcraft-os/releases/releases/download/v21.06/archcraft-2021.06.06-x86_64.iso.sig'
wget -c 'https://github.com/archcraft-os/releases/releases/download/v21.06/archcraft-2021.06.06-x86_64.iso.sha256sum'
```

``` sh
gpg --recv-keys 7DC81F73
```

``` sh
gpg --verify archcraft-2021.06.06-x86_64.iso.sig
```

``` sh
sha256sum -c archcraft-2021.06.06-x86_64.iso.sha256sum
```
