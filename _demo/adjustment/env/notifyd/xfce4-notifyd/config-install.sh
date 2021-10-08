#!/usr/bin/env bash

#set -e


################################################################################
### Head: xfce4-notifyd
##
xfce4_notifyd_config_install () {

	echo "## Config: xfce4-notifyd"

	echo
	echo 'killall -9 xfconfd'
	killall -9 xfconfd

	#echo
	#echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
	#mkdir -p "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

	echo
	echo "install -Dm644 ./config/xfce4-notifyd/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml"
	install -Dm644 "./config/xfce4-notifyd/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml"

	xfce4_notifyd_put_my_autostart_desktop_entry

	echo
}



xfce4_notifyd_put_my_autostart_desktop_entry () {

	#echo
	#echo "mkdir -p $HOME/.local/autostart"
	#mkdir -p "$HOME/.local/autostart"

	echo
	echo "install -Dm644 /etc/xdg/autostart/xfce4-notifyd.desktop $HOME/.config/autostart/xfce4-notifyd.desktop"
	install -Dm644 "/etc/xdg/autostart/xfce4-notifyd.desktop" "$HOME/.config/autostart/xfce4-notifyd.desktop"

	echo
	echo "sed -i 's/^OnlyShowIn=.*/OnlyShowIn=XFCE;OPENBOX;/g' $HOME/.config/autostart/xfce4-notifyd.desktop"
	sed -i 's/^OnlyShowIn=.*/OnlyShowIn=XFCE;OPENBOX;/g' "$HOME/.config/autostart/xfce4-notifyd.desktop"


	#echo
	#echo "cat $HOME/.config/autostart/xfce4-notifyd.desktop"
	#echo
	#cat "$HOME/.config/autostart/xfce4-notifyd.desktop"

	echo
	echo "grep 'OnlyShowIn' $HOME/.config/autostart/xfce4-notifyd.desktop"
	echo
	grep 'OnlyShowIn' "$HOME/.config/autostart/xfce4-notifyd.desktop"
	echo

	## OnlyShowIn=XFCE;OPENBOX;

}
##
### Tail: xfce4-notifyd
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	xfce4_notifyd_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
