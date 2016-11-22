# Install


The following installation guide will help you to install all of the software required.

* [Redis installation](#redis)
    * [Installation using vagrant](#redisvagrant)
    * [Installation using docker](#redisdocker)
* [Recreate database](#database)
* [nginx installation](#nginx)

 
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


## <a name="nginx"></a> Install nginx

[nginx](https://nginx.org/) is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server, originally written by Igor Sysoev.

```bash
$ sudo apt-get update
$ sudo apt-get install -y nginx
$ sudo vim /etc/nginx/nginx.conf # change the parameters as shown in the next figure
$ sudo service nginx restart
```


Configuration:
* check ssl securing: http://nginx.org/en/docs/http/configuring_https_servers.html
* check load balancer configuration: http://nginx.org/en/docs/http/load_balancing.html 



The next code needs to be changed:

```txt
user www-data;
worker_processes 4;
pid /run/nginx.pid;

events {
	worker_connections 768;
	# multi_accept on;
}
http {
	sendfile on;
	tcp_nopush on;
	tcp_nodelay on;
	keepalive_timeout 65;
	types_hash_max_size 2048;

	include /etc/nginx/mime.types;
	default_type application/octet-stream;

	access_log /var/log/nginx/access.log;
	error_log /var/log/nginx/error.log;

	gzip on;
	gzip_disable "msie6";


	client_max_body_size 20M;

	include /etc/nginx/conf.d/*.conf;
	include /etc/nginx/sites-enabled/*;
}

```

1.conf
```txt
server
{
	listen  80;


    location / {
		proxy_pass         https://ip:3000;
		proxy_set_header   Host             $host;
		proxy_set_header   X-Real-IP        $remote_addr;
		proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;
		client_max_body_size 20M;
		proxy_connect_timeout       600;
		proxy_send_timeout          600;
		proxy_read_timeout          600;
		send_timeout                600;
	}
}
```