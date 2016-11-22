(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function cp(){
		this.cpid = '';
		this.nombre = '';
		this.numero = '';
		this._metadata = {
			attrs: {
				'cpid' : {type: 'int', PK: 1},
				'nombre' : {type: 'nvarchar'},
				'numero' : {type: 'int'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'cp'
		};
		Pojo.call(this);
	}
	cp.prototype = Object.create(Pojo.prototype);
	cp.prototype.constructor = cp;
	module.exports = cp;
})(module);