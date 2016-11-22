(function(module, logger){
	'use strict';
	var Q = require('q'),
		sql = require('mssql'),
		EventEmitter = require('events').EventEmitter,
		util = require('util'),
		inherits = require('util').inherits,
		colors = require('colors/safe');

	function Mssqlorm(){
		EventEmitter.call(this);
		this.connection = {};
		this.queriescount = 0;
		this.queries = [];
	}

	inherits(Mssqlorm, EventEmitter);

	Mssqlorm.prototype.connect = function(config) {
		var defer = Q.defer(),
			instance = this;
		this.config = config;
		this.connection = new sql.Connection(config, function(err){
			if (err){
				defer.reject(err);
			} else {
				defer.resolve();
			}
		});

		this.connection.on('error', function(err){
			if (instance.listeners('error').length > 0){
				instance.emit('error', err);
			}
		});
		return defer.promise;
	};

	Mssqlorm.prototype.close = function(){
		var defer = Q.defer();
		this.connection.on('error', function(){
			defer.reject();
		});
		this.connection.on('close', function(){
			defer.resolve();
		});
		this.connection.close();
		if (this.config.logqueries){
			logger.log(this.queries);
		}
		return defer.promise;
	};

	Mssqlorm.prototype.beginTransaction = function(){
		return new sql.Transaction(this.connection);
	};

	Mssqlorm.prototype.commitTransaction = function(transaction){
		var defer = Q.defer();
		transaction.commit(function(err){
			if (err){
				defer.reject(err);
			} else {
				defer.resolve();
			}
		});
		return defer.promise;
	};

	Mssqlorm.prototype.query = function(sql, parameters, transaction){
		var defer = Q.defer();
		var request = this.connection.request(transaction);
		this.queriescount++;
		if (typeof parameters === 'object'){
			for (var key in parameters){
				request.input(key, parameters[key]);
			}
		}
		if (this.config.logqueries){
			this.queries.push({sql: sql, parameters: parameters});

		}
		logger.log({sql: sql, parameters: parameters});
		request.on('error', function(err) {
			logger.error('ORM-Error', err);
			defer.reject(err);
		});
		request.query(sql, function(err, resultset){
			if (err){
				logger.error('ORM-Error', colors.inverse(util.inspect({sql: sql, params: parameters, error: err})));
				defer.reject({sql: sql, params: parameters, error: err});
			} else {
				defer.resolve(resultset);
			}
		});
		return defer.promise;
	};

	Mssqlorm.prototype.request = function(sql, parameters){
		return this.query(sql, parameters);
	};

	Mssqlorm.prototype.listTables = function(){
		var query = 'select * from information_schema.tables';
		return this.query(query);
	};

	Mssqlorm.prototype.tableDesc = function(tablename){
		var params = {
			tbln: tablename
		};
		var query = 'select * from [information_schema].[columns] where table_name=@tbln order by ordinal_position';
		return this.query(query, params);
	};

	module.exports = Mssqlorm;
})(module, console);
