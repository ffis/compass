(function(logger){
	'use strict';
	var fs = require('fs'),
		path = require('path'),
		Q = require('q'),
		Mssql_orm = require('./lib/mssql/mssql_orm'),
		config = require('./config.json');

	var mssql_orm = new Mssql_orm();
	var error_hander = function(err){
		logger.error(err);
		mssql_orm.close();
		throw err;
	};

	var listFiles = function(){
		var defer = Q.defer();
		fs.readdir(path.join(__dirname, 'install', 'tables'), function(err, files){
			if (err){
				defer.reject(err);
			} else {
				defer.resolve(files);
			}
		});
		return defer.promise;
	};

	var tryToCreate = function(orm, filename){
		var defer = Q.defer();
		fs.readFile( path.join(__dirname, 'install', 'tables', filename), 'utf8',
				function(err, content){
					if (err){
						defer.reject(err);
					} else {
						logger.log(content);
						if (content.length > 0){
							orm.query(content).then(defer.resolve, defer.reject);
						} else {
							defer.reject({err: filename});
						}
					}
				}
			);
		return defer.promise;
	};

	mssql_orm.connect(config.db).then(function(){
		Q.all([mssql_orm.listTables(), listFiles() ])
			.then(function(res){
				var tablesInDB = res[0], tablesShouldBe = res[1];
				var found = false, tablename = '', promises = [];
				for (var i = 0, j = tablesShouldBe.length; i < j; i++){
					found = false, tablename = tablesShouldBe[i].replace('.sql', '');
					for (var k = 0, l = tablesInDB.length; k < l; k++){
						if (tablesInDB[k].TABLE_NAME === tablename){
							found = true; break;
						}
					}
					logger.log('table ', tablename, found ? ' has been found. OK.' : ' has not been found. We will try to recreate.');
					if (!found){
						promises.push(tryToCreate(mssql_orm, tablesShouldBe[i]));
					}
				}
				Q.all(promises).then(function(){
					logger.log('Installed successfully');
					mssql_orm.close();
				}, error_hander);
			}, error_hander);
	}, error_hander);

})(console);