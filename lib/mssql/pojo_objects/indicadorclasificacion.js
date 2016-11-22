(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function indicadorclasificacion(){
		this.indicadorclasificacionid = '';
		this.nombre = '';
		this.nombrecorto = '';
		this.color = '';
		this.orden = '';
		this.iniciales = '';
		this._metadata = {
			attrs: {
				'indicadorclasificacionid' : {type: 'int', PK: 1},
				'nombre' : {type: 'nvarchar'},
				'nombrecorto' : {type: 'nvarchar'},
				'color' : {type: 'nvarchar'},
				'orden' : {type: 'int'},
				'iniciales' : {type: 'nvarchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'indicadorclasificacion'
		};
		Pojo.call(this);
	}
	indicadorclasificacion.prototype = Object.create(Pojo.prototype);
	indicadorclasificacion.prototype.constructor = indicadorclasificacion;
	module.exports = indicadorclasificacion;
})(module);