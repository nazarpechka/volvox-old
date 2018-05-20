VOLVOX [VVX] Source Code
================================


Specifications:
--------------

* Symbol: VVX
* PoW (proof of work)
* Algorithms: scrypt, x17, Lyra2rev2, myr-groestl, blake2s
* Blocktime: 30 seconds 
* TX fee: 0.05
* RPC port: 19056 
* P2P port: 19156 
* Total reward cap: 31,415,926,535
* Blockreward (~26 years of PoW): 
  * Block 0 to 30,000 : 8,000 coins
  * 30,000 to 60,000 : 7,000 coins
  * 60,000 to 120,000: 6,000 coins
  * 120,000 to 240,000: 5,000 coins
  * 240,000 to 480,000: 4,000 coins
  * 480,000 to 960,000: 3,000 coins
  * 960,000 to 1,920,000: 2,000 coins
  * 1,920,000 to ~25,685,926: 1,000 coins

NODES TO SYNC
-------------
 addnode=109.172.77.244:50080
addnode=125.161.128.64:50844
addnode=126.140.208.104:65514
addnode=129.213.44.160:40362
addnode=129.213.44.160:45998
addnode=129.213.44.160:55366
addnode=129.213.44.160:60640
addnode=14.191.198.185:55551
addnode=195.154.188.180:56958
addnode=198.100.146.141:37592
addnode=199.247.19.109:19156
addnode=210.211.124.189:51289
addnode=212.47.227.141:58560
addnode=31.134.191.24:62948
addnode=45.77.45.20:19156
addnode=46.101.149.70:56924
addnode=5.189.142.115:47742
addnode=52.166.11.177:56992
addnode=54.36.63.180:56994
addnode=62.182.194.53:26825
addnode=68.58.18.244:52727
addnode=71.192.79.254:52734
addnode=73.102.42.45:53229
addnode=78.107.6.152:59009
addnode=79.143.180.57:45388
addnode=79.143.180.57:47776
addnode=79.143.180.57:48774
addnode=80.209.231.3:49200
addnode=82.77.149.113:19156
addnode=83.243.67.227:56289
addnode=83.243.67.227:59709
addnode=84.194.90.140:53066
addnode=85.192.167.85:7928
addnode=86.125.115.165:19156
addnode=89.252.203.250:1459
addnode=94.23.38.219:56240
addnode=95.12.229.87:15785
addnode=95.165.145.184:15165
addnode=95.213.184.239:44634
addnode=98.220.186.8:59858

Using VOLVOX Windows wallet
-------------

1. Download the pre-compiled software from "Releases" section.
2. Run VOLVOX-qt.

Changing configuration file:

1. In windows file explorer, open c:\Users\XXX\AppData\Roaming\VOLVOX (be sure to change XXX to your windows user)
2. Right click and create a new file VOLVOX.txt
3. Edit the file using instruction from "Using the wallet on Ubuntu/Debian" section
4. Save and close the file
5. Rename the file to VOLVOX.conf
6. Start the VOLVOX-qt program.
7. Open up VOLVOX-qt console and run ```getinfo``` (or ```getmininginfo```) to verify settings.


Compiling VOLVOX Linux wallet
----------------------

Step 1. Install the dependencies. 

```sudo apt-get update```

```sudo apt-get install libdb-dev libdb++-dev build-essential libtool autotools-dev automake pkg-config libssl1.0-dev libevent-dev bsdmainutils git libboost-all-dev libminiupnpc-dev libqt5gui5 libqt5core5a libqt5webkit5-dev libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev```

**Note**: If you are on debian, you will also need to `apt-get install libcanberra-gtk-module`.

Step 2. Clone the git repository and compile the daemon and gui wallet:

```git clone https://github.com/volvoxcoin/VOLVOX && cd VOLVOX && ./autogen.sh && ./configure --with-incompatible-bdb && make```

if you are using source-build libdb4.8(++)-dev you may need to use

```./configure  CPPFLAGS="-I/usr/local/BerkeleyDB.4.8/include -O2" LDFLAGS="-L/usr/local/BerkeleyDB.4.8/lib"```

**Note**: If you get a "memory exhausted" error, make a swap file. (https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04)


Compiling VOLVOX MacOS wallet:
----------------------
1. Ensure you do not have qt5 nor qt installed.

    `brew uninstall qt qt5 qt55 qt52`   
   
2. Download [qt5.4.2](https://download.qt.io/archive/qt/5.4/5.4.2/qt-opensource-mac-x64-clang-5.4.2.dmg)
     
3. Install qt5 into /usr/local/qt5
   
   Note: Change the installation folder from "xxx/Qt5.4.2" to "/usr/local/qt5"
   
4. Run these commands:

    `export PKG_CONFIG_PATH=/usr/local/qt5/5.4/clang_64/lib/pkgconfig`
    
    `export PATH=/usr/local/qt5/5.4/clang_64/bin:$PATH`
    
    `export QT_CFLAGS="-I/usr/local/qt5/5.4/clang_64/lib/QtWebKitWidgets.framework/Versions/5/Headers -I/usr/local/qt5/5.4/clang_64/lib/QtWebView.framework/Versions/5/Headers -I/usr/local/qt5/5.4/clang_64/lib/QtDBus.framework/Versions/5/Headers -I/usr/local/qt5/5.4/clang_64/lib/QtWidgets.framework/Versions/5/Headers -I/usr/local/qt5/5.4/clang_64/lib/QtWebKit.framework/Versions/5/Headers -I/usr/local/qt5/5.4/clang_64/lib/QtNetwork.framework/Versions/5/Headers -I/usr/local/qt5/5.4/clang_64/lib/QtGui.framework/Versions/5/Headers -I/usr/local/qt5/5.4/clang_64/lib/QtCore.framework/Versions/5/Headers -I. -I/usr/local/qt5/5.4/clang_64/mkspecs/macx-clang -F/usr/local/qt5/5.4/clang_64/lib"`
    
    `export QT_LIBS="-F/usr/local/qt5/5.4/clang_64/lib -framework QtWidgets -framework QtGui -framework QtCore -framework DiskArbitration -framework IOKit -framework OpenGL -framework AGL -framework QtNetwork -framework QtWebKit -framework QtWebKitWidgets -framework QtDBus -framework QtWebView"`
    
    
5. Install the other required items:

    `brew install protobuf boost@1.57 miniupnpc openssl qrencode berkeley-db4 automake`
    
    `brew link boost@1.57 --force`
    
6. Download the wallet source and build:

    `git clone https://github.com/nazarpechka/VOLVOX`

    `cd VOLVOX`
    
    `./autogen.sh`
    
    `./configure --with-gui=qt5`
    
    `make -j4`
 

Using VOLVOX Linux and MacOS wallet:
----
The gui wallet is in ./VOLVOX/src/qt and the daemon in ./VOLVOX/src directories.

**Note**: If you see something like 'Killed (program cc1plus)' run ```dmesg``` to see the error(s)/problems(s). This is most likely caused by running out of resources. You may need to add some RAM or add some swap space.

**Optional**:
If you want to copy the binaries for use by all users, run the following commands:

```sudo cp src/VOLVOXd /usr/bin/```

```sudo cp src/qt/VOLVOX-qt /usr/bin/```

Step 3. Creating a configuration file. Type ```cd ~``` to get back to the home folder and type:

```VOLVOXd.exe```  (or ```./VOLVOXd``` if on mac or linux)

the output from this command will tell you that you need to make a Volvox.conf and will suggest some good starting values.

For Linux users, type:
 
```nano ~/.VOLVOX/VOLVOX.conf```

For mac users, the command is ```nano ~/Library/Application\Support\VOLVOX\VOLVOX.conf```

**Note:** You must re-start the wallet after making changes to VolvoxCoin.conf.

Paste the output from the `VOLVOXd` command into the Volvox.conf like this: (It is recommended to change the password to something unique.)

    rpcuser=Volvoxrpcusername
    rpcpassword=85CpSuCNvDcYsdQU8w621mkQqJAimSQwCSJL5dPT9wQX
    
    
**Optional**: Add `rpcport=19056`, `port=19156`, or `algo=groestl` to the configuration file.

Add `daemon=1`. 

Your config may look something like this:

    rpcuser=Volvoxrpcusername
    rpcpassword=85CpSuCNvDcYsdQU8w621mkQqJAimSQwCSJL5dPT9wQX
    rpcport=19056
    port=19156
    daemon=1
    algo=groestl

Exit the Volvox.conf by pressing `ctrl + x` on your keyboard then pressing `y` and hitting enter. This should have created a Volvox.conf file with what you just added. 

Type ```VOLVOXd.exe``` (or ```./VOLVOXd``` if on mac or linux) and your Volvox daemon should start.

To check the status of how much of the blockchain has been downloaded (aka synced) type `VOLVOXd.exe getinfo` (or `./VOLVOXd getinfo` if on mac or linux).


Want to 'solo-mine' from the wallet?
----------
You can use the wallet to mine. You need to specify the algorithm (see below) and set the "gen" flag. For instance, in the configuration specify ```gen=1```. 


Using different algorithms (for mining)
----------

To use a specific mining algorithm use the `algo` switch in your configuration file (.conf file) or from the command line (like this `--algo=x17`) Here are the possible values:

    algo=x17
    algo=scrypt
    algo=groestl
    algo=lyra
    algo=blake


Building the Mac installer (.dmg) file
-----
Run `make deploy`

If you are building the .dmg (by running 'mac deploy') you may need to run these commands if you get an error regarding mysql:

    brew install mysql
    
    cd /usr/local/qt5/5.4/clang_64/plugins/sqldrivers
    
    otool -L libqsqlmysql.dylib

Note: This may be pointing to an version of mysql that you do not have installed (like mysql55) - Alternatively, you may be able to remove the library from the sqldrivers folder.

    install_name_tool -change /opt/local/lib/mysql55/mysql/libmysqlclient.18.dylib /usr/local/Cellar/mysql/5.7.12/lib/libmysqlclient.20.dylib libqsqlmysql.dylib

Note: You may also run into issues when using `macdeployqtplus` to create the bundle, and the library will not bundle all of the boost dylibs. It's highly recommended to use the functions provided inside of [dylib-fixes.sh](/building/mac/dylib-fixes.sh)

Trying to build .dmg on 10.8? You will need to run this:
    
    export CFLAGS=-Qunused-arguments
    
    export CPPFLAGS=-Qunused-arguments
    
    sudo -E easy_install appscript
    
    
Thanks
----
Special Thanks to: 
* SHIELD Devs
* VERGE Devs
* Tor Devs
* i2p Devs
* Bitcoin Devs


