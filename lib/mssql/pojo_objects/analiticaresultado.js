(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function analiticaresultado(){
		this.analiticaresultadoid = '';
		this.analitica = '';
		this.indicador = '';
		this.valor = '';
		this.fecha = '';
		this.alerta = '';
		this.responsable = '';
		this.limiteinferior = '';
		this.limitesuperior = '';
		this.unidad = '';
		this.comentario = '';
		this._metadata = {
			attrs: {
				'analiticaresultadoid' : {type: 'bigint', PK: 1},
				'analitica' : {type: 'bigint'},
				'indicador' : {type: 'int'},
				'valor' : {type: 'nvarchar'},
				'fecha' : {type: 'datetime'},
				'alerta' : {type: 'nchar'},
				'responsable' : {type: 'nvarchar'},
				'limiteinferior' : {type: 'nvarchar'},
				'limitesuperior' : {type: 'nvarchar'},
				'unidad' : {type: 'nvarchar'},
				'comentario' : {type: 'text'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'analiticaresultado'
		};
		Pojo.call(this);
	}
	analiticaresultado.prototype = Object.create(Pojo.prototype);
	analiticaresultado.prototype.constructor = analiticaresultado;
	module.exports = analiticaresultado;
})(module);