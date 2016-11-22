(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function facultativo(){
		this.facultativoid = '';
		this.carmid = '';
		this.nombre = '';
		this.email = '';
		this.servicio = '';
		this.perfil = '';
		this.telefono = '';
		this.password = '';
		this.img = '';
		this.habilitado = '';
		this.ultimologin = '';
		this.hashrecuperacion = '';
		this.validezrecuperacion = '';
		this.numintentos = '';
		this._metadata = {
			attrs: {
				'facultativoid' : {type: 'int', PK: 1},
				'carmid' : {type: 'varchar'},
				'nombre' : {type: 'varchar'},
				'email' : {type: 'varchar'},
				'servicio' : {type: 'varchar'},
				'perfil' : {type: 'int'},
				'telefono' : {type: 'varchar', nullable: true},
				'password' : {type: 'varchar'},
				'img' : {type: 'varchar', nullable: true},
				'habilitado' : {type: 'int', nullable: true},
				'ultimologin' : {type: 'datetime', nullable: true},
				'hashrecuperacion' : {type: 'varchar', nullable: true},
				'validezrecuperacion' : {type: 'datetime', nullable: true},
				'numintentos' : {type: 'int', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'facultativo'
		};
		Pojo.call(this);
	}
	facultativo.prototype = Object.create(Pojo.prototype);
	facultativo.prototype.constructor = facultativo;
	module.exports = facultativo;
})(module);