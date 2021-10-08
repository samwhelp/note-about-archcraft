#!/usr/bin/env bash

#set -e


################################################################################
### Head: mate-volume-control-status-icon
##
mate_volume_control_status_icon_config_install () {

	echo "## Config: mate-volume-control-status-icon"

	echo
	echo 'killall -9 xfconfd'
	killall -9 xfconfd


	mate_volume_control_status_icon_put_my_autostart_desktop_entry

	echo
}



mate_volume_control_status_icon_put_my_autostart_desktop_entry () {

	#echo
	#echo "mkdir -p $HOME/.local/autostart"
	#mkdir -p "$HOME/.local/autostart"

	echo
	echo "install -Dm644 /etc/xdg/autostart/mate-volume-control-status-icon.desktop $HOME/.config/autostart/mate-volume-control-status-icon.desktop"
	install -Dm644 "/etc/xdg/autostart/mate-volume-control-status-icon.desktop" "$HOME/.config/autostart/mate-volume-control-status-icon.desktop"

	echo
	echo "sed -i 's/^OnlyShowIn=.*/OnlyShowIn=XFCE;OPENBOX;/g' $HOME/.config/autostart/mate-volume-control-status-icon.desktop"
	sed -i 's/^OnlyShowIn=.*/OnlyShowIn=MATE;OPENBOX;/g' "$HOME/.config/autostart/mate-volume-control-status-icon.desktop"

	#echo
	#echo "cat $HOME/.config/autostart/mate-volume-control-status-icon.desktop"
	#echo
	#cat "$HOME/.config/autostart/mate-volume-control-status-icon.desktop"

	echo
	echo "grep 'OnlyShowIn' $HOME/.config/autostart/mate-volume-control-status-icon.desktop"
	echo
	grep 'OnlyShowIn' "$HOME/.config/autostart/mate-volume-control-status-icon.desktop"
	echo

	## OnlyShowIn=MATE;OPENBOX;


}
##
### Tail: mate-volume-control-status-icon
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	mate_volume_control_status_icon_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
