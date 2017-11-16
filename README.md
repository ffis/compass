# compass
Real Time Dashboard Utilities


The system is composed by several parts each of one can be running on different servers.

* [Redis](http://redis.io/): A fast in-memory cache server.
* Database server: Microsoft SQL Server. In latter versions of the application the choice might be MongoDB. We do not provide a way to install the database engine but a way to recreate the database structure.
* Web Application: It's the application that provides REST services with the stats.
* Parser module: It's an application that runs in background an checks whether a new HL7 Message has been received.
* [nginx](http://nginx.org/): A Web server, here it acts as a load balancer. You may not use it but is also recommended.


![Diagram](http://cdn.rawgit.com/ffis/compass/master/docs/stack.svg)
<!--
<img src="http://cdn.rawgit.com/ffis/compass/e9f2a6be3f78ea9b7dd86db58283c4c34a34ae48/docs/stack.svg"/>
-->

[Installation process](./docs/INSTALL.md)
