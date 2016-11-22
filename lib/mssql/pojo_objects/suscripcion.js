(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function suscripcion(){
		this.suscripcionid = '';
		this.nhc = '';
		this.facultativo = '';
		this.fechainicio = '';
		this.fechafin = '';
		this.fecharevision = '';
		this._metadata = {
			attrs: {
				'suscripcionid' : {type: 'bigint', PK: 1},
				'nhc' : {type: 'int'},
				'facultativo' : {type: 'int'},
				'fechainicio' : {type: 'datetime', nullable: true},
				'fechafin' : {type: 'datetime', nullable: true},
				'fecharevision' : {type: 'datetime', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'suscripcion'
		};
		Pojo.call(this);
	}
	suscripcion.prototype = Object.create(Pojo.prototype);
	suscripcion.prototype.constructor = suscripcion;
	module.exports = suscripcion;
})(module);