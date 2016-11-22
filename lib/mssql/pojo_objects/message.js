(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function message(){
		this.messageid = '';
		this.ip = '';
		this.time = '';
		this.message = '';
		this.channel = '';
		this.json = '';
		this._metadata = {
			attrs: {
				'messageid' : {type: 'int', PK: 1},
				'ip' : {type: 'varchar'},
				'time' : {type: 'datetime'},
				'message' : {type: 'varchar'},
				'channel' : {type: 'varchar'},
				'json' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'message'
		};
		Pojo.call(this);
	}
	message.prototype = Object.create(Pojo.prototype);
	message.prototype.constructor = message;
	module.exports = message;
})(module);