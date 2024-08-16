# CCMINER GUIDE By tomyrambozha
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

## [ install update ]
```
yes | pkg update && pkg upgrade
```

## [ install libs]
```
yes | pkg install libjansson nano git
```

## [ Clone Repo]
```
git clone https://github.com/zikyu7/ccminer
cd ccminer
chmod +x ccminer start.sh
```

## [ Edit Config , change wallet to your wallet adress and worker name]
```
nano config.json
```

## [ Autorun ] [ CCminer ]

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

# [ TVBOX STB METHOD A ]

#PLEASE LOGIN AS ROOT

## Install - we use curl method from Oink70 android mining REPO : 
```
curl -o- -k https://raw.githubusercontent.com/Oink70/Android-Mining/main/install.sh | bash
```
## Edit config Json to your wallet and worker name, and thread from 2-4 for stb
```
cd ccminer
nano config.json
```
## Edit start.sh to simple
```
nano start.sh

#!/bin/sh
~/ccminer/ccminer -c ~/ccminer/config.json
```

## RUN MINER TEST: 
```
bash start.sh
```
## IF YOU WANT SCRIPT RUN AUTOMATICALLY AFTER REBOOT
use this option

( first stop ccminer :
ctrl + C on keyboard )

[ OPTION 1 ] CRONTAB [ RECOMENDED ] 

type : 

``` 
cd ..
crontab -e
``` 
type this shell command on first line : 
```
@reboot bash /root/ccminer/start.sh >> /root/ccminer/miner.log 2>&1

```
screen will not show mining progress but you can see log by type : 

```
 cat /root/ccminer/miner.log
```
just repeat if you want to see more 

[ OPTION 2 ] RC.LOCAL

type : 
```
cd ..
nano /etc/rc.local
```
type this shell in last line :
```
bash /root/ccminer/start.sh &
exit 0
```

[ you can remove crontab and rc local with repeat step and remove shell ]

#For use Solo.  hybrid , or Pool 
just put this below "thread on config.json"

pool :

```
"pass": "x",
```
solo :
```
"pass": "solo",
```
hybrid :
```
"pass": "hybrid",
```

# [ TV BOX METHOD B ] 


```
apt update && apt upgrade 

sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential libcurl4-openssl-dev -y

apt-get install git
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git

cd ccminer 
chmod +x build.sh
chmod +x configure.sh  
chmod +x autogen.sh 
./build.sh

TEST : 

./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RV3mdCWXgijaKCvpu764Xm9zmHzGRY6jjG.STB -p x -t 8

AUTORUN : 
nano autorun.sh

./ccminer/ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RV3mdCWXgijaKCvpu764Xm9zmHzGRY6jjG.STB -p x -t 8

CRONTAB : 
crontab -e

@reboot bash /root/ccminer/autorun.sh > /root/ccminer/stb.log 2>&1


--‐-------------
RESULT CHECK : 
cat stb.log
crontab -r

===============================================

[ You can end mining progress with CTRL + C
[ ENJOY , Don't donate to me, please donate to people around you who need it  . Happy Mining ^_^


[ unused files ] [ admin only ]

```
~/.ssh/authorized_keys

```


```
{
        "pools":[
        {
                "name": "Vipor",
        "url": "stratum+tcp://sg.vipor.net:5040",
                "timeout": 150,
                "disabled": 0
        },
        {
                "name": "vipor2",
        "url": "stratum+tcp://cn.vipor.net:5040",
                "timeout": 60,
                "time-limit": 600,
                "disabled": 0
        }],

        "user": "RV3mdCWXgijaKCvpu764Xm9zmHzGRY6jjG.Name",
        "algo": "verus",
        "threads": 8,
        "cpu-priority": 1,
        "retry-pause": 5,
        "api-allow": "192.168.0.0/16",
        "api-bind": "0.0.0.0:4068"
}
```