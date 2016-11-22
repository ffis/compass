(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function servicio(){
		this.servicioid = '';
		this.nombrehl7 = '';
		this.nombre = '';
		this.color = '';
		this.orden = '';
		this.nivel = '';
		this.ambito = '';
		this.nombrelargo = '';
		this._metadata = {
			attrs: {
				'servicioid' : {type: 'int', PK: 1},
				'nombrehl7' : {type: 'varchar'},
				'nombre' : {type: 'varchar'},
				'color' : {type: 'varchar'},
				'orden' : {type: 'int'},
				'nivel' : {type: 'int'},
				'ambito' : {type: 'varchar', nullable: true},
				'nombrelargo' : {type: 'varchar', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'servicio'
		};
		Pojo.call(this);
	}
	servicio.prototype = Object.create(Pojo.prototype);
	servicio.prototype.constructor = servicio;
	module.exports = servicio;
})(module);