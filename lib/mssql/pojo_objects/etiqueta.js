(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function etiqueta(){
		this.etiquetaid = '';
		this.nombre = '';
		this.icono = '';
		this._metadata = {
			attrs: {
				'etiquetaid' : {type: 'int', PK: 1},
				'nombre' : {type: 'nvarchar'},
				'icono' : {type: 'nvarchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'etiqueta'
		};
		Pojo.call(this);
	}
	etiqueta.prototype = Object.create(Pojo.prototype);
	etiqueta.prototype.constructor = etiqueta;
	module.exports = etiqueta;
})(module);