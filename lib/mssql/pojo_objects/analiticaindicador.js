(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function analiticaindicador(){
		this.analiticaindicadorid = '';
		this.nombre = '';
		this.clasificacion = '';
		this.idexterno = '';
		this.orden = '';
		this.coste = '';
		this.tipo = '';
		this._metadata = {
			attrs: {
				'analiticaindicadorid' : {type: 'int', PK: 1},
				'nombre' : {type: 'nvarchar', nullable: true},
				'clasificacion' : {type: 'int'},
				'idexterno' : {type: 'int'},
				'orden' : {type: 'int'},
				'coste' : {type: 'float'},
				'tipo' : {type: 'int'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'analiticaindicador'
		};
		Pojo.call(this);
	}
	analiticaindicador.prototype = Object.create(Pojo.prototype);
	analiticaindicador.prototype.constructor = analiticaindicador;
	module.exports = analiticaindicador;
})(module);