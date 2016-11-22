(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function tipoprueba(){
		this.tipopruebaid = '';
		this.nombre = '';
		this.nombrehl7 = '';
		this.categoria = '';
		this.color = '';
		this.grupo = '';
		this.coste = '';
		this.codigo = '';
		this._metadata = {
			attrs: {
				'tipopruebaid' : {type: 'int', PK: 1},
				'nombre' : {type: 'varchar'},
				'nombrehl7' : {type: 'varchar'},
				'categoria' : {type: 'varchar'},
				'color' : {type: 'varchar'},
				'grupo' : {type: 'varchar'},
				'coste' : {type: 'float'},
				'codigo' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'tipoprueba'
		};
		Pojo.call(this);
	}
	tipoprueba.prototype = Object.create(Pojo.prototype);
	tipoprueba.prototype.constructor = tipoprueba;
	module.exports = tipoprueba;
})(module);