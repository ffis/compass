(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function device(){
		this.deviceid = '';
		this.facultativo = '';
		this.gcmcode = '';
		this._metadata = {
			attrs: {
				'deviceid' : {type: 'int', PK: 1},
				'facultativo' : {type: 'varchar'},
				'gcmcode' : {type: 'text'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'device'
		};
		Pojo.call(this);
	}
	device.prototype = Object.create(Pojo.prototype);
	device.prototype.constructor = device;
	module.exports = device;
})(module);