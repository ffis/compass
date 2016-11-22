(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function datospersonalesanaliticahl7(){
		this.datospersonalesanaliticahl7id = '';
		this.nhc = '';
		this.apellidos = '';
		this.nombre = '';
		this.cipestatal = '';
		this.cipautonomico = '';
		this.nss = '';
		this.nif = '';
		this._metadata = {
			attrs: {
				'datospersonalesanaliticahl7id' : {type: 'int', PK: 1},
				'nhc' : {type: 'int'},
				'apellidos' : {type: 'varchar'},
				'nombre' : {type: 'varchar'},
				'cipestatal' : {type: 'varchar'},
				'cipautonomico' : {type: 'varchar'},
				'nss' : {type: 'varchar'},
				'nif' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'datospersonalesanaliticahl7'
		};
		Pojo.call(this);
	}
	datospersonalesanaliticahl7.prototype = Object.create(Pojo.prototype);
	datospersonalesanaliticahl7.prototype.constructor = datospersonalesanaliticahl7;
	module.exports = datospersonalesanaliticahl7;
})(module);