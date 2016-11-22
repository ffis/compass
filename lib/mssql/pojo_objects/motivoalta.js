(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function motivoalta(){
		this.id = '';
		this.cod_hl7 = '';
		this.descripcion = '';
		this.tipo = '';
		this.tipo_acto = '';
		this._metadata = {
			attrs: {
				'id' : {type: 'int', PK: 1},
				'cod_hl7' : {type: 'varchar'},
				'descripcion' : {type: 'varchar'},
				'tipo' : {type: 'varchar'},
				'tipo_acto' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'motivoalta'
		};
		Pojo.call(this);
	}
	motivoalta.prototype = Object.create(Pojo.prototype);
	motivoalta.prototype.constructor = motivoalta;
	module.exports = motivoalta;
})(module);