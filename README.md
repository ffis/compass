# compass
Real Time Dashboard Utilities


### Install virtualbox, vagrant and git:
```bash
$ sudo apt-get install -y virtualbox vagrant git
```

Test versions:

```bash:
$ vagrant -v
Vagrant 1.8.1

$ vboxmanage --version
5.0.24_Ubuntur108355

$ git --version
git version 2.7.4 
```

### Deploy redis using:
```bash
$ git clone https://github.com/ffis/vagrant-redis vagrant-redis
$ cd vagrant-redis
$ vagrant up
```

Test:
```bash
$ wget https://github.com/crypt1d/redi.sh/raw/master/redi.sh
$ echo "this is a variable" | bash redi.sh -s testvar
$ bash redi.sh -g testvar
# If you can read "this is a variable" then everything is ok.
```

Filtering connections:
```bash
$ sudo iptables -I INPUT -p TCP -s 10.0.0.0/8 --dport 6379 -j ACCEPT
$ sudo iptables -I INPUT -p TCP --dport 6379 -j DROP
```


