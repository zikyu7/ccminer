## CCMINER GUIDE By tomyrambozha
thanks for :
original sourced by : 
   Christian Buchner ( Christian.Buchner@gmail.com )
   Christian H. ( Chris84 )
   Tanguy Pruvot ( tpruvot@github )
   Darktron [ github for ccminer verus ]

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


[ ENJOY , Don't donate to me, please donate to people around you who need it  . Happy Mining ^_^

