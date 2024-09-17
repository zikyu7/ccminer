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


<a href=https://www.mediafire.com/file/osnhx9dj5gd08gr/com.termux_1020.apk/file> Termux Mirror</a> <br>

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

AUTORUN TERMUX AFTER REBOOT
[ advanced user only ]

## Auto start app ( easy) 

<a href=https://apkcombo.com/id/autostart-app-manager/com.sugarapps.autostartmanager/> AutostartApp</a> <br>


## Download termux boot
<a href=https://f-droid.org/repo/com.termux.boot_1000.apk> Termux Boot</a> <br>

### create dir and boot script
```
mkdir ~/.termux/boot
cd ~/.termux/boot
nano termux.sh
```
### type this in sh , ctrl x and save reboot phone. 
```
#!/data/data/com.termux/files/usr/bin/sh
termux-wake-lock
~/ccminer/start.sh >> ~/miner.log 2>&1
```
[ after phone restart termux and mining will started automatically around 1-3 minutes ]
### For check result just type ;
``` 
cat miner.log
```
### Clear log & reboot phone
``` 
rm miner.log
``` 

# TVBOX / STB 

##STV BOX / STB TUTORIAL HAS BEEN MOVED TO 
NEW REPOSITORY : 
 

<a href=https://github.com/zikyu7/STBminev> GO TO TVBOX/STB NEW REPOSITORY</a> <br>


==============================

[ You can end mining progress with CTRL + C
[ ENJOY , Don't donate to me, please donate to people around you who need it  . Happy Mining ^_^


[ unused files ] [ admin only ]

```
~/.ssh/authorized_keys

```

```
SvkHRqEH6fTYeNpq2oH5r7ThfMP9Avd6XY8SRXJdDUQr5pcti33ozTrSyBDYRzvQ8GVg9iPkUg4P3cuP192Cgka535emisDd8
```