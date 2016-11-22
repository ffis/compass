(function(module, logger){
	'use strict';
	var Q = require('q');
	function pojo(){

		var fields = [], parameters = [], fieldswithoutids = [], parameterswithoutids = [];
		for (var attribute in this._metadata.attrs){
			fields.push( '[' + attribute + ']' );
			if (this._metadata.attrs[attribute].PK){
				this._metadata.attrsid.push(attribute);
				parameters.push('@' + attribute);
			} else {
				fieldswithoutids.push( attribute );
				if (this._metadata.attrs[attribute].type === 'datetime'){
					parameters.push('convert(datetime, @' + attribute + ', 111)');
					parameterswithoutids.push('convert(datetime, @' + attribute + ', 111)');
				} else {
					parameters.push('@' + attribute);
					parameterswithoutids.push('@' + attribute);
				}
			}
		}

		this._metadata.sqls.insert = 'insert into ' + this._metadata.tablename + ' (' + fieldswithoutids.join(',') + ') values (' + parameterswithoutids.join(', ') + ')';
		this._metadata.sqls.select = 'select * from ' + this._metadata.tablename;
		this._metadata.sqls.delete = 'delete from ' + this._metadata.tablename + ' where ' + this._metadata.attrsid.map(function(attrb){ return attrb + '=@' + attrb; }).join(' and ');
		this._metadata.sqls.get = 'select * from ' + this._metadata.tablename + ' where ' + this._metadata.attrsid.map(function(attr){ return attr + '=@' + attr; }).join(' and ');
	}

	pojo.prototype.allNullableExists = function(){
		for (var attr in this._metadata.attrs){
			if (this[attr] === '' || typeof this[attr] === 'undefined'){
				if (this._metadata.attrsid.indexOf(attr) < 0){
					return false;
				}
			}
		}
		return true;
	};

	pojo.prototype.Update = function(orm){
		var defer = Q.defer(), attribute,
			instance = this,
			fieldswithoutids = [];
		for (attribute in this._metadata.attrs){
			if (!this._metadata.attrs[attribute].PK){
				if (this._metadata.nullable && (this[attribute] === '' || this[attribute])){
					instance;
				} else if (this._metadata.attrs[attribute].type === 'datetime' && typeof this[attribute] === 'string'){
					fieldswithoutids.push( attribute + '=convert(datetime, @' + attribute + ', 111)');
				} else {
					fieldswithoutids.push( attribute + '=@' + attribute);
				}
			}
		}

		var updatequery = 'update ' + instance._metadata.tablename + ' set ' + fieldswithoutids.join(',') + ' where ' + this._metadata.attrsid.map(function(attrb){ return attrb + '=@' + attrb; }).join(' and ');
		orm
			.request(updatequery, this)
			.then(function(){
				defer.resolve(instance);
			}, defer.reject);
		return defer.promise;
	};

	pojo.prototype.Save = function(orm){
		var defer = Q.defer(),
			instance = this,
			insertquery = this._metadata.sqls.insert,
			fieldswithoutids = [], parameterswithoutids = [],
			attribute, needsReloading = false;

		if (true || !this.allNullableExists()){
			for (attribute in this._metadata.attrs){
				if (!this._metadata.attrs[attribute].PK){
					if (this._metadata.nullable && (this[attribute] === '' || this[attribute])){
						instance;
					} else if (this._metadata.attrs[attribute].type === 'datetime' && typeof this[attribute] === 'string'){
						fieldswithoutids.push( attribute );
						parameterswithoutids.push('convert(datetime, @' + attribute + ', 111)');
					} else {
						fieldswithoutids.push( attribute );
						parameterswithoutids.push('@' + attribute);
					}
				}
			}
			insertquery = 'insert into ' + instance._metadata.tablename + ' (' + fieldswithoutids.join(',') + ') values (' + parameterswithoutids.join(', ') + ')';
		}

		for (attribute in instance._metadata.attrs){
			if (instance._metadata.attrs[attribute].PK){
				needsReloading = true;
				break;
			}
		}

		if (needsReloading){
			insertquery = insertquery + ';select @@IDENTITY AS \'identity\'';
		}

		orm
			.request(insertquery, this)
			.then(function(subdata){
				if (needsReloading){
					if (subdata.length === 1){
						if (subdata[0]['identity'] > 0){
							instance[attribute] = subdata[0]['identity'];
							defer.resolve(instance);
						} else {
							defer.reject({err: 'No ID bigger than 0, but it was required', insertquery: insertquery, obj: instance, queries: orm.queries});
						}
					} else {
						defer.reject({err: 'No ID, but it was required', insertquery: insertquery, obj: instance, queries: orm.queries});
					}
				} else {
					defer.resolve(instance);
				}
			}, defer.reject);
		return defer.promise;
	};

	pojo.prototype.GetBy = function(orm, restrictions, orderby){
		var fields = [], sortby = [], f;

		if (typeof orderby === 'object'){
			for (f in orderby){
				if (orderby[f] === 1){
					sortby.push(f + ' asc');
				}else if (orderby[f] === -1){
					sortby.push(f + ' desc');
				}
			}
		}
		if (typeof restrictions === 'object'){
			for (f in restrictions){
				fields.push(f + '=@' + f);
			}
			return orm.request(this._metadata.sqls.select + ' where ' + fields.join(' and ') + (sortby.length > 0 ? ' order by ' + sortby.join(', ') : ''), restrictions);
		} else {
			return orm.request(this._metadata.sqls.select + (sortby.length > 0 ? ' order by ' + sortby.join(',') : ''));
		}
	};

	pojo.prototype.Delete = function(orm, restrictions){
		var fields = [], f;

		if (typeof restrictions === 'object'){
			for (f in restrictions){
				fields.push(f + '=@' + f);
			}
			if (fields.length > 0){
				return orm.request('delete from ' + this._metadata.tablename + ' where ' + fields.join(' and '), restrictions);
			}
		}
		var d = Q.defer();
		d.reject({error: 'Delete whole table not supported'});
		return d.promise;
	};

	pojo.prototype.GetCount = function(orm, field, value){
		var param = {}, fields = [], sql = 'select count(*) as count from [' + this.constructor.name + ']';
		if (typeof value === 'undefined' && typeof field === 'object'){

			for (var f in field){
				fields.push(f + '=@' + f);
			}
			return orm.request(sql + ' where ' + fields.join(' and '), field);
		}else if (typeof field !== 'undefined'){
			param[field] = value;
			return orm.request(sql + ' where ' + field + '=@' + field, param);
		}
		return orm.request(sql);
	};
	module.exports = pojo;

})(module, console);