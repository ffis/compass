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
$ vagrant up # to wake up the Virtual Machine
$ vagraht halt # use this anytime you want or you need to, you may turn it off

```

Test:
```bash
$ wget https://github.com/crypt1d/redi.sh/raw/master/redi.sh
$ echo "this is a variable" | bash redi.sh -s testvar
$ bash redi.sh -g testvar
# If you can read "this is a variable" then everything is ok.
```

Filtering connections: (change according to DMZ)
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

Filtering connections: (change according to DMZ)
```bash
$ sudo iptables -I INPUT -p TCP -s 10.0.0.0/8 --dport 6379 -j ACCEPT
$ sudo iptables -I INPUT -p TCP --dport 6379 -j DROP
```



## <a name="database"></a> Recreate database

### Create database and configure it

Go to the _Microsoft SQL Server Management Studio_ then connect to the database user.
* Create a new database, lets name it test.
* Create a new user for adding some data, lets name it writer. Configure it to use an SQL user and password login.
	* Assign user to database test db_ddladmin, db_datawriter and db_datareader function.
* Create a new user for retrieving data, lets name it reader. Configure it to use an SQL user and password login.
	* Assign user to database test db_datareader function.


### Recreate tables using docker and nodejs


```bash
$ git clone https://github.com/ffis/compass
$ cd compass
$ npm install
$ vim config.json

# configure the db attribute and provide the host, user, password and database name
# (db.user, db.password, db.server, db.database)
# (note you should use an IP address not a name declared on /etc/hosts for host as filesystem is different inside the container)

$ sudo docker pull node
$ sudo docker run -it --rm --name my-install-script -v "$PWD":/usr/src/app -w /usr/src/app node npm run installdb
```


Test:

```bash
$ npm run installdb #re-run
```

Then the output should be similar to:
```txt
table  alergia  has been found. OK.
table  analiticahl7  has been found. OK.
table  analiticaindicador  has been found. OK.
table  analiticaresultado  has been found. OK.
table  categoriaanaliticahl7  has been found. OK.
table  cp  has been found. OK.
table  datospersonalesanaliticahl7  has been found. OK.
table  datospersonalespaciente  has been found. OK.
table  device  has been found. OK.
table  etiqueta  has been found. OK.
table  etiquetavisita  has been found. OK.
table  facultativo  has been found. OK.
table  facultativocarm  has been found. OK.
table  ficticios  has been found. OK.
table  hito  has been found. OK.
table  indicadoranaliticahl7  has been found. OK.
table  indicadorclasificacion  has been found. OK.
table  localizacion  has been found. OK.
table  mapa  has been found. OK.
table  message  has been found. OK.
table  motivoacto  has been found. OK.
table  motivoalta  has been found. OK.
table  notificacion  has been found. OK.
table  obx  has been found. OK.
table  obxval  has been found. OK.
table  paciente  has been found. OK.
table  preingreso  has been found. OK.
table  registroactividad  has been found. OK.
table  resultadoanaliticahl7  has been found. OK.
table  resultadosmicro  has been found. OK.
table  rx  has been found. OK.
table  rxtipo  has been found. OK.
table  servicio  has been found. OK.
table  sprites_location  has been found. OK.
table  suscripcion  has been found. OK.
table  tipoprueba  has been found. OK.
table  trigger  has been found. OK.
table  valorcritico  has been found. OK.
table  vectorialbody  has been found. OK.
table  visitapaciente  has been found. OK.
Installed successfully
```


## <a name="nginx"></a> Nginx

[nginx](https://nginx.org/) is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server, originally written by Igor Sysoev.


Again you may choose two ways to use nginx. The preferred way is the _docker_ one.


### Deploy nginx using docker:

```bash
$ sudo service docker start

```



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