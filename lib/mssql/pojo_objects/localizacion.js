(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function localizacion(){
		this.localizacionid = '';
		this.nombre = '';
		this.nombrecorto = '';
		this.tipo = '';
		this.sala = '';
		this.servicio = '';
		this.edificio = '';
		this.grupo = '';
		this.capacidad = '';
		this.color = '';
		this.grupo2 = '';
		this._metadata = {
			attrs: {
				'localizacionid' : {type: 'int', PK: 1},
				'nombre' : {type: 'varchar'},
				'nombrecorto' : {type: 'varchar'},
				'tipo' : {type: 'varchar'},
				'sala' : {type: 'varchar'},
				'servicio' : {type: 'varchar'},
				'edificio' : {type: 'varchar'},
				'grupo' : {type: 'varchar', nullable: true},
				'capacidad' : {type: 'int'},
				'color' : {type: 'varchar', nullable: true},
				'grupo2' : {type: 'varchar', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'localizacion'
		};
		Pojo.call(this);
	}
	localizacion.prototype = Object.create(Pojo.prototype);
	localizacion.prototype.constructor = localizacion;
	module.exports = localizacion;
})(module);