#!/usr/bin/env bash


#sudo locale-gen zh_TW.UTF-8
#sudo locale-gen en_US.UTF-8 zh_TW.UTF-8 zh_CN.UTF-8

sudo sh -c "sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen"
sudo sh -c "sed -i 's/#\(zh_TW\.UTF-8\)/\1/' /etc/locale.gen"
sudo locale-gen


# locale -a


# which locale-gen
# /usr/sbin/locale-gen
# /etc/locale.gen
# /usr/lib/locale/locale-archive
# strings /usr/lib/locale/locale-archive| grep zh_TW



