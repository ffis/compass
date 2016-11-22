(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function categoriaanaliticahl7(){
		this.categoriaanaliticahl7id = '';
		this.nombrehl7 = '';
		this.id = '';
		this.nombre = '';
		this.padre = '';
		this.color = '';
		this.iniciales = '';
		this.orden = '';
		this._metadata = {
			attrs: {
				'categoriaanaliticahl7id' : {type: 'int', PK: 1},
				'nombrehl7' : {type: 'varchar'},
				'id' : {type: 'int'},
				'nombre' : {type: 'varchar'},
				'padre' : {type: 'int'},
				'color' : {type: 'varchar'},
				'iniciales' : {type: 'varchar', nullable: true},
				'orden' : {type: 'int', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'categoriaanaliticahl7'
		};
		Pojo.call(this);
	}
	categoriaanaliticahl7.prototype = Object.create(Pojo.prototype);
	categoriaanaliticahl7.prototype.constructor = categoriaanaliticahl7;
	module.exports = categoriaanaliticahl7;
})(module);