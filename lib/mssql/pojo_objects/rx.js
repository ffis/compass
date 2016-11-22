(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function rx(){
		this.rxid = '';
		this.numsolicitud = '';
		this.usid = '';
		this.codigoaccion = '';
		this.facultativoproveedor = '';
		this.campo1 = '';
		this.campo2 = '';
		this.serviciodiagnostico = '';
		this.servicioorigen = '';
		this.tipovalor = '';
		this.tipoobservacion = '';
		this.subtipovalor = '';
		this.valor = '';
		this.bandera = '';
		this.fechaobservacion = '';
		this.facultativoradiologo = '';
		this.fechainicio = '';
		this.fechafin = '';
		this.nhc = '';
		this.cip = '';
		this.idvisitaalternativo = '';
		this.icu = '';
		this.genero = '';
		this.fechanotificacion = '';
		this._metadata = {
			attrs: {
				'rxid' : {type: 'int', PK: 1},
				'numsolicitud' : {type: 'char'},
				'usid' : {type: 'char'},
				'codigoaccion' : {type: 'char'},
				'facultativoproveedor' : {type: 'int'},
				'campo1' : {type: 'char'},
				'campo2' : {type: 'char'},
				'serviciodiagnostico' : {type: 'char'},
				'servicioorigen' : {type: 'char'},
				'tipovalor' : {type: 'char'},
				'tipoobservacion' : {type: 'int'},
				'subtipovalor' : {type: 'char'},
				'valor' : {type: 'varchar'},
				'bandera' : {type: 'char'},
				'fechaobservacion' : {type: 'datetime'},
				'facultativoradiologo' : {type: 'int'},
				'fechainicio' : {type: 'datetime', nullable: true},
				'fechafin' : {type: 'datetime', nullable: true},
				'nhc' : {type: 'int'},
				'cip' : {type: 'varchar'},
				'idvisitaalternativo' : {type: 'varchar'},
				'icu' : {type: 'int'},
				'genero' : {type: 'char', nullable: true},
				'fechanotificacion' : {type: 'datetime', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'rx'
		};
		Pojo.call(this);
	}
	rx.prototype = Object.create(Pojo.prototype);
	rx.prototype.constructor = rx;
	module.exports = rx;
})(module);