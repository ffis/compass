(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function analiticahl7(){
		this.analiticahl7id = '';
		this.idmensaje = '';
		this.generador = '';
		this.nhc = '';
		this.datospersonales = '';
		this.cipestatal = '';
		this.fechanacimiento = '';
		this.fechafallecimiento = '';
		this.cp = '';
		this.localizacion = '';
		this.servicio = '';
		this.icu = '';
		this.idvisitaalternativo = '';
		this.ordercontrol = '';
		this.id1 = '';
		this.id2 = '';
		this.id3 = '';
		this.placergroup = '';
		this.responseflag = '';
		this.fecha1 = '';
		this.fecharesultado = '';
		this.fechanotificacion = '';
		this.genero = '';
		this.solicitante = '';
		this.coste = '';
		this._metadata = {
			attrs: {
				'analiticahl7id' : {type: 'int', PK: 1},
				'idmensaje' : {type: 'varchar'},
				'generador' : {type: 'varchar'},
				'nhc' : {type: 'int'},
				'datospersonales' : {type: 'int'},
				'cipestatal' : {type: 'varchar'},
				'fechanacimiento' : {type: 'datetime', nullable: true},
				'fechafallecimiento' : {type: 'datetime', nullable: true},
				'cp' : {type: 'varchar'},
				'localizacion' : {type: 'int'},
				'servicio' : {type: 'varchar'},
				'icu' : {type: 'int'},
				'idvisitaalternativo' : {type: 'varchar'},
				'ordercontrol' : {type: 'varchar'},
				'id1' : {type: 'int'},
				'id2' : {type: 'int'},
				'id3' : {type: 'varchar'},
				'placergroup' : {type: 'varchar'},
				'responseflag' : {type: 'varchar'},
				'fecha1' : {type: 'datetime', nullable: true},
				'fecharesultado' : {type: 'datetime', nullable: true},
				'fechanotificacion' : {type: 'datetime', nullable: true},
				'genero' : {type: 'varchar', nullable: true},
				'solicitante' : {type: 'varchar', nullable: true},
				'coste' : {type: 'float', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'analiticahl7'
		};
		Pojo.call(this);
	}
	analiticahl7.prototype = Object.create(Pojo.prototype);
	analiticahl7.prototype.constructor = analiticahl7;
	module.exports = analiticahl7;
})(module);