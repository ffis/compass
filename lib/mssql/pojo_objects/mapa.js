(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function mapa(){
		this.mapaid = '';
		this.nombre = '';
		this.ruta = '';
		this.servicio = '';
		this.width = '';
		this.height = '';
		this.title = '';
		this._metadata = {
			attrs: {
				'mapaid' : {type: 'int', PK: 1},
				'nombre' : {type: 'varchar'},
				'ruta' : {type: 'varchar'},
				'servicio' : {type: 'varchar'},
				'width' : {type: 'int'},
				'height' : {type: 'int'},
				'title' : {type: 'varchar', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'mapa'
		};
		Pojo.call(this);
	}
	mapa.prototype = Object.create(Pojo.prototype);
	mapa.prototype.constructor = mapa;
	module.exports = mapa;
})(module);