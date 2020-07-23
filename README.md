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

$ pip3 --version
pip 18.1 from /usr/lib/python3/dist-packages/pip (python 3.7)

$ node --version
v14.6.0

$ npm --version
6.14.6

$ cargo --version
cargo 1.45.0 (744bd1fbb 2020-06-15)
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

### Rust

```
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

$ source ~/.profile

$ cargo --version
cargo 1.45.0 (744bd1fbb 2020-06-15)
```
