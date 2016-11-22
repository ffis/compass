(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function rxtipo(){
		this.rxtipoid = '';
		this.nombre = '';
		this.nombrehl7 = '';
		this.categoria = '';
		this.color = '';
		this.grupo = '';
		this.coste = '';
		this.codigo = '';
		this._metadata = {
			attrs: {
				'rxtipoid' : {type: 'int', PK: 1},
				'nombre' : {type: 'varchar'},
				'nombrehl7' : {type: 'varchar'},
				'categoria' : {type: 'varchar'},
				'color' : {type: 'varchar'},
				'grupo' : {type: 'varchar'},
				'coste' : {type: 'float', nullable: true},
				'codigo' : {type: 'int', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'rxtipo'
		};
		Pojo.call(this);
	}
	rxtipo.prototype = Object.create(Pojo.prototype);
	rxtipo.prototype.constructor = rxtipo;
	module.exports = rxtipo;
})(module);