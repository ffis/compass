# Install


The following installation guide will help you to install all of the software required.

* [Redis installation](#redis)
    * [Installation using vagrant](#redisvagrant)
    * [Installation using docker](#redisdocker)
* [Recreate database](#database)


 
## <a name="redis"></a> Redis installation


[Redis](http://redis.io/) is an open source (BSD licensed), in-memory data structure store, used as database, cache and message broker.


We suggest two ways to install Redis, one based on vagrant and another one based on docker. The second one is lighter but you may choose
the one you prefer. Take in count you may install this VM or container in another host, there's no need to be on the same machine of the
parser nor of the database server nor the application server.


### <a name="redisvagrant"></a> Vagrant Version


#### Install virtualbox, vagrant and git:
```bash
$ sudo apt-get install -y virtualbox vagrant
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

### Deploy redis using vagrant:
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


## <a name="redisdocker"></a> Docker version (experimental)

### Install docker:
```bash
$ sudo apt-get install -y docker.io 
```


### Deploy redis using docker:

```bash
$ sudo service docker start
$ sudo docker pull redis
$ sudo docker run --name some-redis -p6379:6379 -d redis

$ pidredis=`sudo docker ps -a | grep redis | cut -f 1 -d " "`
$ sudo docker stop $pidredis 
$ sudo docker rm $pidredis 
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



## <a name="database"></a> Recreate database

### Install dependencies

#### Install nodejs
```bash
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install build-essential
$ curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
$ sudo apt-get install -y nodejs
```

Test versions:
```bash
$ node --version
v6.9.1
$ npm --version
3.10.8
```

#### Install git
```bash
$ sudo apt-get install -y git
```

Test version:
```bash
$git --version
git version 1.9.1
```


### Run database recreation script
```bash

$ git clone https://github.com/ffis/compass
$ cd compass
$ npm install
$ vim config.json # configure the db attribute and provide the host, user, password and database name
$ npm run installdb

``` 