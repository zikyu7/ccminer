# ccminer
CC MINER FOR SMARTPHONE

A. USING TERMUX 
Download Termux lastest Termux apk here

<a href=https://f-droid.org/repo/com.termux_1020.apk>TERMUX FDROID</a> <br>
<br>
```sh

[ install ] [ CCminer ]

yes | pkg update && pkg upgrade
yes | pkg install libjansson nano git
git clone https://github.com/zikyu7/ccminer
cd ccminer
chmod +x ccminer start.sh

[ Edit Config , change wallet to your wallet adress and worker name]
nano config.json

[ Autorun ] [ CCminer ]
cd ..
nano ../usr/etc/bash.bashrc

[ put this code ]
cd ccminer/&&./start.sh

```
<br>
