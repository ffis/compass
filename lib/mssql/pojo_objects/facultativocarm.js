(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function facultativocarm(){
		this.facultativocarmid = '';
		this.nombrehl7 = '';
		this.nombre = '';
		this.iniciales = '';
		this._metadata = {
			attrs: {
				'facultativocarmid' : {type: 'int', PK: 1},
				'nombrehl7' : {type: 'varchar'},
				'nombre' : {type: 'varchar'},
				'iniciales' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'facultativocarm'
		};
		Pojo.call(this);
	}
	facultativocarm.prototype = Object.create(Pojo.prototype);
	facultativocarm.prototype.constructor = facultativocarm;
	module.exports = facultativocarm;
})(module);