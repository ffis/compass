(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function preingreso(){
		this.preingresoid = '';
		this.nhc = '';
		this.icu = '';
		this.servicio = '';
		this.fechapreingreso = '';
		this.fechaingreso = '';
		this.tiempopreingreso = '';
		this._metadata = {
			attrs: {
				'preingresoid' : {type: 'int', PK: 1},
				'nhc' : {type: 'bigint'},
				'icu' : {type: 'bigint'},
				'servicio' : {type: 'varchar'},
				'fechapreingreso' : {type: 'datetime'},
				'fechaingreso' : {type: 'datetime', nullable: true},
				'tiempopreingreso' : {type: 'int', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'preingreso'
		};
		Pojo.call(this);
	}
	preingreso.prototype = Object.create(Pojo.prototype);
	preingreso.prototype.constructor = preingreso;
	module.exports = preingreso;
})(module);