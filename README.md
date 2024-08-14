## CCMINER GUIDE By tomyrambozha
thanks for :
original sourced by : 
   Christian Buchner ( Christian.Buchner@gmail.com )
   Christian H. ( Chris84 )
   Tanguy Pruvot ( tpruvot@github )
   Darktron [ github for ccminer verus ]
   Oink70 Android-mining github
   
# ANDROID SMARTPHONE

Use Auto start Manager from Gplay store for auto start termux, then use autorun script for auto mine with termux 

A. USING TERMUX 
Download Termux lastest Termux apk here

<a href=https://f-droid.org/repo/com.termux_1020.apk>TERMUX FDROID</a> <br>

# [ install update ]
```
yes | pkg update && pkg upgrade
```

# [ install libs]
```
yes | pkg install libjansson nano git
```

# [ Clone Repo]
```
git clone https://github.com/zikyu7/ccminer
cd ccminer
chmod +x ccminer start.sh
```

# [ Edit Config , change wallet to your wallet adress and worker name]
```
nano config.json
```

# [ Autorun ] [ CCminer ]

```
cd ..
nano ../usr/etc/bash.bashrc
```

[ put this code ]
```
cd ccminer/&&./start.sh

```


# TVBOX / STB

You need to install armbian first :

<a href=https://k-space.ee.armbian.com/archive/aml-s9xx-box/archive/Armbian_23.02.2_Aml-s9xx-box_bullseye_current_6.1.11.img.xz>bullseye current</a> <br>
<a href=https://k-space.ee.armbian.com/archive/aml-s9xx-box/archive/Armbian_23.02.2_Aml-s9xx-box_jammy_current_6.1.11.img.xz>Jammy current</a> <br>
<a href=https://k-space.ee.armbian.com/archive/aml-s9xx-box/archive/Armbian_23.11.1_Aml-s9xx-box_bookworm_current_6.1.63.img.xz>Book woorm </a> <br>

Or Download From Ophub Release HEre :
<a href=https://github.com/ophub/amlogic-s9xxx-armbian/releases> DOWNLOAD </a> <br>


Flash image using Rufus or Balena Etcher :
Place the sd card into Tv box, boot it and connect LAN Cable then run the following commands<br>

#PLEASE LOGIN AS ROOT

# Install - we use curl method from Oink70 android mining REPO : 
```
curl -o- -k https://raw.githubusercontent.com/Oink70/Android-Mining/main/install.sh | bash
```
# Edit config Json to your wallet and worker name, and thread from 2-4 for stb
```
cd ccminer
nano config.json
```
# Edit start.sh to simple
```
nano start.sh

#!/bin/sh
~/ccminer/ccminer -c ~/ccminer/config.json
```

# Make script autorun after Tvbox restart
```
cd ..
nano /etc/rc.local
```
type in last line :
```
bash /root/ccminer/start.sh &
exit 0
```

[ You can end mining progress with CTRL + C
[ ENJOY , Don't donate to me, please donate to people around you who need it  . Happy Mining ^_^

