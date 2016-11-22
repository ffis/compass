(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function valorcritico(){
		this.valorcriticoid = '';
		this.indicador = '';
		this.umbral = '';
		this.direccion = '';
		this.comentario = '';
		this._metadata = {
			attrs: {
				'valorcriticoid' : {type: 'int', PK: 1},
				'indicador' : {type: 'int'},
				'umbral' : {type: 'float'},
				'direccion' : {type: 'int'},
				'comentario' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'valorcritico'
		};
		Pojo.call(this);
	}
	valorcritico.prototype = Object.create(Pojo.prototype);
	valorcritico.prototype.constructor = valorcritico;
	module.exports = valorcritico;
})(module);