(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function notificacion(){
		this.notificacionid = '';
		this.nhc = '';
		this.fecha = '';
		this.facultativo = '';
		this.tipo = '';
		this.alerta = '';
		this.id_referencia = '';
		this.enlace = '';
		this.contenido = '';
		this._metadata = {
			attrs: {
				'notificacionid' : {type: 'int', PK: 1},
				'nhc' : {type: 'int'},
				'fecha' : {type: 'datetime'},
				'facultativo' : {type: 'varchar'},
				'tipo' : {type: 'varchar'},
				'alerta' : {type: 'int'},
				'id_referencia' : {type: 'int'},
				'enlace' : {type: 'varchar'},
				'contenido' : {type: 'text'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'notificacion'
		};
		Pojo.call(this);
	}
	notificacion.prototype = Object.create(Pojo.prototype);
	notificacion.prototype.constructor = notificacion;
	module.exports = notificacion;
})(module);