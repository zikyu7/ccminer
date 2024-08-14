# ccminer
CC MINER FOR SMARTPHONE
thanks for :
original sourced by : 
   Christian Buchner ( Christian.Buchner@gmail.com )
   Christian H. ( Chris84 )
   Tanguy Pruvot ( tpruvot@github )
   Darktron [ github for ccminer verus ]

Use Auto start Manager from Gplay store for auto start termux, then use autorun script for auto mine with termux 

A. USING TERMUX 
Download Termux lastest Termux apk here

<a href=https://f-droid.org/repo/com.termux_1020.apk>TERMUX FDROID</a> <br>

# [ install ] [ CCminer ]


<br>
```sh
yes | pkg update && pkg upgrade
```
<br>

<br>
```sh
yes | pkg install libjansson nano git

```
<br>

<br>
```sh

git clone https://github.com/zikyu7/ccminer
cd ccminer
chmod +x ccminer start.sh

```
<br>


# [ Edit Config , change wallet to your wallet adress and worker name]
<br>
```sh
nano config.json
```
<br>


# [ Autorun ] [ CCminer ]

```
<br>
cd ..
nano ../usr/etc/bash.bashrc

<br>
```sh

[ put this code ]
cd ccminer/&&./start.sh

```
<br>

```
<br>

[ ENJOY , Don't donate to me, please donate to people around you who need it  . Happy Mining ^_^ 
