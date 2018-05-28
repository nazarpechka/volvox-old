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


Compiling VOLVOX Linux wallet:
----------------------
1. Ensure you do not have qt5 nor qt installed.

2. Run these commands:

      `git clone https://github.com/volvoxcoin/volvox.git`

      `cd VOLVOX`

      `./building/linux/requirements.sh`

      `./building/linux/build.sh`

      `./building/linux/dist.sh`

**Note**: If you are on debian, you will also need to `apt-get install libcanberra-gtk-module`.

**Note**: If you don't need gui (pool owner), you can go with this easy command:

```git clone https://github.com/volvoxcoin/VOLVOX && cd VOLVOX && ./autogen.sh && ./configure --with-incompatible-bdb --with-gui=no && make && cd src && strip VOLVOXd && cp VOLVOXd .```

**Note**: If you get a "memory exhausted" error, make a swap file. (https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04)


Compiling VOLVOX MacOS wallet:
----------------------
1. Ensure you do not have qt5 nor qt installed.

2. Run these commands:

    `git clone https://github.com/volvoxcoin/volvox.git`

    `cd VOLVOX`

    `./building/mac/requirements.sh`

    `./building/mac/build.sh`

    `./building/mac/dist.sh`

Starting & Configuring VOLVOX Windows wallet
-------------

1. Download the pre-compiled software from "Releases" section.
2. Run VOLVOX-qt.

Changing configuration file:

1. In windows file explorer, open C:\Users\XXX\AppData\Roaming\VOLVOX (be sure to change XXX to your windows user)
2. Right click and create a new file VOLVOX.txt
3. Edit the file using instruction from "Using the wallet on Ubuntu/Debian" section
4. Save and close the file
5. Rename the file to VOLVOX.conf
6. Start the VOLVOX-qt program.
7. Open up VOLVOX-qt console and run ```getinfo``` (or ```getmininginfo```) to verify settings.

Starting & Configuring VOLVOX Linux and MacOS wallet:
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
