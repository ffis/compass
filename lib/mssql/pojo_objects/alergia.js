(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function alergia(){
		this.alergiaid = '';
		this.nombrehl7 = '';
		this.nombre = '';
		this.codigo = '';
		this.categoria = '';
		this.color = '';
		this._metadata = {
			attrs: {
				'alergiaid' : {type: 'int', PK: 1},
				'nombrehl7' : {type: 'varchar'},
				'nombre' : {type: 'varchar'},
				'codigo' : {type: 'varchar'},
				'categoria' : {type: 'varchar'},
				'color' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'alergia'
		};
		Pojo.call(this);
	}
	alergia.prototype = Object.create(Pojo.prototype);
	alergia.prototype.constructor = alergia;
	module.exports = alergia;
})(module);