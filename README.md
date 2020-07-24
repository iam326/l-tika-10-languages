# l-tika-10-languages

## 環境

```
$ lsb_release -a
No LSB modules are available.
Distributor ID:	Raspbian
Description:	Raspbian GNU/Linux 10 (buster)
Release:	10
Codename:	buster

$ python3 --version
Python 3.7.3

$ node --version
v14.6.0

$ npm --version
6.14.6

$ gcc --version
gcc (Raspbian 8.3.0-6+rpi1) 8.3.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

$ bash --version
GNU bash, バージョン 5.0.3(1)-release (arm-unknown-linux-gnueabihf)
Copyright (C) 2019 Free Software Foundation, Inc.
ライセンス GPLv3+: GNU GPL バージョン 3 またはそれ以降 <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

$ cargo --version
cargo 1.45.0 (744bd1fbb 2020-06-15)

$ java --version
openjdk 11.0.7 2020-04-14
OpenJDK Runtime Environment (build 11.0.7+10-post-Raspbian-3deb10u1)
OpenJDK Server VM (build 11.0.7+10-post-Raspbian-3deb10u1, mixed mode)
```

## Install

### Python

```
Raspberry Pi OS に最初っから入っています。
```

### Node.js

```
$ curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

$ sudo apt-get install -y nodejs

$ node --version
v14.6.0
```

### C

```
Raspberry Pi OS に最初っから入っています。

$ gcc -Wall -o main main.c -lwiringPi
$ ./main
```

### Shell Script

```
Raspberry Pi OS に最初っから入っています。
```

### Rust

```
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

$ source ~/.profile

$ cargo --version
cargo 1.45.0 (744bd1fbb 2020-06-15)
```

### Java

```
$ sudo apt install default-jdk

$ java --version
openjdk 11.0.7 2020-04-14
OpenJDK Runtime Environment (build 11.0.7+10-post-Raspbian-3deb10u1)
OpenJDK Server VM (build 11.0.7+10-post-Raspbian-3deb10u1, mixed mode)

$ curl -sSL https://pi4j.com/install | sudo bash

$ javac -classpath .:classes:/opt/pi4j/lib/'*' -d . Ltika.java
$ java -classpath .:classes:/opt/pi4j/lib/'*' Ltika
```
