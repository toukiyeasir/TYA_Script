#! /bin/bash
clear
printf '\033]2;INSTALLER\a'
echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/TYA_script" ]]
then
	echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
	sleep 4
	if [[ -d /root/TYA_script ]]
	then
		rm -r /root/TYA_script
	fi
	mkdir /root/TYA_script
	cp -r "$DIR"/* /root/TYA_script
	chmod +x /root/TYA_script/install.sh
	gnome-terminal -e "bash /root/TYA_script/install.sh"
fi
echo -e "Installing TYA_script..."
sleep 1
echo -e "Fixing permissions"
sleep 2
chmod +x /root/TYA_script/TYA1
chmod +x /root/TYA_script/TYA2
chmod +x /root/TYA_script/TYA3
chmod +x /root/TYA_script/TYA31
chmod +x /root/TYA_script/TYA
chmod +x /root/TYA_script/TYA4
chmod +x /root/TYA_script/TYA41
chmod +x /root/TYA_script/TYA42
chmod +x /root/TYA_script/TYA43
chmod +x /root/TYA_script/TYA_s/TYA131.sh
chmod +x /root/TYA_script/TYA_s/TYA132.sh
chmod +x /root/TYA_script/TYA_s/TYA133.sh
chmod +x /root/TYA_script/uninstall.sh
clear
echo -e "Copying script to /bin/TYA_script"
sleep 1
mkdir /bin/TYA_script
cd /root/TYA_script
cp /root/TYA_script/TYA /bin/TYA_script
cp /root/TYA_script/TYA1 /bin/TYA_script
cp /root/TYA_script/TYA2 /bin/TYA_script
cp /root/TYA_script/TYA3 /bin/TYA_script
cp /root/TYA_script/TYA31 /bin/TYA_script
cp /root/TYA_script/TYA4 /bin/TYA_script
cp /root/TYA_script/TYA41 /bin/TYA_script
cp /root/TYA_script/TYA42 /bin/TYA_script
cp /root/TYA_script/TYA43 /bin/TYA_script
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected.Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected.Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Type 'changelog' to see what's new on this version"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/TYA_script")
	if [[ "$BASHCHECK" != "" ]]
	then
		echo -e "I SAID USE i ONLY ONE TIME..........."
		sleep 3
	fi
	echo -e "Adding TYA_script to PATH so you can access it from anywhere"
	sleep 1
	export PATH=/bin/TYA_script:$PATH
	sleep 1
	echo "export PATH=/bin/TYA_script:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Open a NEW terminal and type 'TYA' to launch the script"
sleep  4
gnome-terminal -e TYA
exit
