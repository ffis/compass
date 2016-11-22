(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function etiquetavisita(){
		this.etiquetavisitaid = '';
		this.etiqueta = '';
		this.icu = '';
		this.nhc = '';
		this.fecha = '';
		this._metadata = {
			attrs: {
				'etiquetavisitaid' : {type: 'int', PK: 1},
				'etiqueta' : {type: 'int'},
				'icu' : {type: 'int'},
				'nhc' : {type: 'int'},
				'fecha' : {type: 'datetime', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'etiquetavisita'
		};
		Pojo.call(this);
	}
	etiquetavisita.prototype = Object.create(Pojo.prototype);
	etiquetavisita.prototype.constructor = etiquetavisita;
	module.exports = etiquetavisita;
})(module);