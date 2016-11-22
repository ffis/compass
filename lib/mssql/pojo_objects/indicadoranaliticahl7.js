(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function indicadoranaliticahl7(){
		this.indicadoranaliticahl7id = '';
		this.nombrehl7 = '';
		this.nombre = '';
		this.idindicador = '';
		this.coste = '';
		this.categoriahl7 = '';
		this.orden = '';
		this._metadata = {
			attrs: {
				'indicadoranaliticahl7id' : {type: 'int', PK: 1},
				'nombrehl7' : {type: 'varchar'},
				'nombre' : {type: 'varchar'},
				'idindicador' : {type: 'varchar'},
				'coste' : {type: 'float'},
				'categoriahl7' : {type: 'varchar'},
				'orden' : {type: 'int', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'indicadoranaliticahl7'
		};
		Pojo.call(this);
	}
	indicadoranaliticahl7.prototype = Object.create(Pojo.prototype);
	indicadoranaliticahl7.prototype.constructor = indicadoranaliticahl7;
	module.exports = indicadoranaliticahl7;
})(module);