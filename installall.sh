#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo Please run this script as root.
else
echo -e "\e[31mWelcome to Uncursus Install Script V0.01 (definetly not Stable) By @TannerRidenour-dev.\e[0m"
echo "WARNING : IM NOT RESPONSABLE IF ANYTHING GOES WRONG, something will most likely go wrong :/"
echo "If you found bug pls create an issues in github so i can make this a stable release ;)"
echo "we shouldn't have to jailbreak a jailbreak, for the love of god Pwn and Coolstar get along we have common goals"
echo "Sbingner you are one of the good ones we love you"
echo "if you enjoy buy me prnhub premium"
echo "cashapp:Tannerridenour"
echo "Enjoy :)"
echo "Starting..."
echo "Installing Dependency's For The Installer"
apt update
apt install unzip -y
apt install com.bingner.plutil -y
apt install zsh -y
apt install curl -y
echo "Downloading And Executing Offical Procurus Script From Coolstar"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Yaya48/Uncursus/new/procursus-deploy-u0.sh)"
echo "Downloading And Installing Offical Procurus Deb"
rm -rf /User/Documents/Uncursus
mkdir /User/Documents/Uncursus
apt update
apt install wget -y --allow-unauthenticated
wget https://github.com/Yaya48/Uncursus/blob/new/DebProcurusSystem.zip?raw=true --directory-prefix=/User/Documents/Uncursus/
unzip /User/Documents/Uncursus/DebProcurusSystem.zip?raw=true -d /User/Documents/Uncursus/
dpkg -i /User/Documents/Uncursus/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
mkdir /User/Documents/Uncursus/u0
wget https://github.com/Yaya48/Uncursus/blob/new/DebPatch.zip?raw=true --directory-prefix=/User/Documents/Uncursus/
unzip /User/Documents/Uncursus/DebPatch.zip?raw\=true -d /User/Documents/Uncursus/DebPatch
rm -rf /usr/bin/cynject
wget https://apt.bingner.com/debs/1443.00/com.ex.substitute_0.1.14_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/u0
wget https://apt.bingner.com/debs/1443.00/com.saurik.substrate.safemode_0.9.6003_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/u0
echo "Done. Installing necessary debs for patch."
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/us.diatr.sileorespring_1.1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/coreutils-bin.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/libssl.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/lzma.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/ncurses5-libs.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/xz.deb
dpkg -i --force-all /User/Documents/Uncursus/u0/*.deb
echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"
rm -rf /User/Documents/Uncursus/
rm /etc/apt/sources.list.d/odyssey.sources
echo "All Done."
rm -rf /Aplications/Cydia.app
killall SpringBoard
fi
