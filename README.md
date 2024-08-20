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

## Download termux boot
<a href=https://f-droid.org/repo/com.termux.boot_1000.apk/file> Termux Boot</a> <br>

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


# TVBOX / STB 

##STV BOX / STB TUTORIAL HAS BEEN MOVED TO 
NEW REPOSITORY : 
 

href=https://github.com/zikyu7/STBminev> STB TV BOX NEW REPOSITORY</a> <br>

https://github.com/zikyu7/STBminev


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
