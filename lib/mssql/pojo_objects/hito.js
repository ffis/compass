(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function hito(){
		this.hitoid = '';
		this.nhc = '';
		this.icu = '';
		this.facultativo = '';
		this.localizacion = '';
		this.hora_inicio = '';
		this.hora_fin = '';
		this.duracion = '';
		this.servicio = '';
		this.patienttype = '';
		this._metadata = {
			attrs: {
				'hitoid' : {type: 'bigint', PK: 1},
				'nhc' : {type: 'bigint'},
				'icu' : {type: 'bigint'},
				'facultativo' : {type: 'nvarchar'},
				'localizacion' : {type: 'int'},
				'hora_inicio' : {type: 'datetime'},
				'hora_fin' : {type: 'datetime'},
				'duracion' : {type: 'int'},
				'servicio' : {type: 'nvarchar'},
				'patienttype' : {type: 'varchar', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'hito'
		};
		Pojo.call(this);
	}
	hito.prototype = Object.create(Pojo.prototype);
	hito.prototype.constructor = hito;
	module.exports = hito;
})(module);