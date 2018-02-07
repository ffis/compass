* [nginx installation](#nginx)

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


Create a file /etc/nginx/conf.d/1.conf with a content like these:
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