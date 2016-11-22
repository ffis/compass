(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function datospersonalespaciente(){
		this.datospersonalespacienteid = '';
		this.nombre = '';
		this.direccion = '';
		this.tlf = '';
		this.tlftb = '';
		this.nss = '';
		this.fechanacimiento = '';
		this.genero = '';
		this.md5 = '';
		this.apellidos = '';
		this.nif = '';
		this.fechaversion = '';
		this._metadata = {
			attrs: {
				'datospersonalespacienteid' : {type: 'bigint', PK: 1},
				'nombre' : {type: 'varchar'},
				'direccion' : {type: 'varchar'},
				'tlf' : {type: 'varchar'},
				'tlftb' : {type: 'varchar'},
				'nss' : {type: 'varchar'},
				'fechanacimiento' : {type: 'datetime'},
				'genero' : {type: 'char'},
				'md5' : {type: 'varchar'},
				'apellidos' : {type: 'varchar'},
				'nif' : {type: 'varchar'},
				'fechaversion' : {type: 'datetime'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'datospersonalespaciente'
		};
		Pojo.call(this);
	}
	datospersonalespaciente.prototype = Object.create(Pojo.prototype);
	datospersonalespaciente.prototype.constructor = datospersonalespaciente;
	module.exports = datospersonalespaciente;
})(module);