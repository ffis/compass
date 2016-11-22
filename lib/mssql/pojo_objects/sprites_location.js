(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function sprites_location(){
		this.sprites_locationid = '';
		this.mapa = '';
		this.localizacion = '';
		this.x = '';
		this.y = '';
		this.tipoicono = '';
		this.polygon = '';
		this._metadata = {
			attrs: {
				'sprites_locationid' : {type: 'int', PK: 1},
				'mapa' : {type: 'int'},
				'localizacion' : {type: 'int'},
				'x' : {type: 'float'},
				'y' : {type: 'float'},
				'tipoicono' : {type: 'varchar'},
				'polygon' : {type: 'varchar', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'sprites_location'
		};
		Pojo.call(this);
	}
	sprites_location.prototype = Object.create(Pojo.prototype);
	sprites_location.prototype.constructor = sprites_location;
	module.exports = sprites_location;
})(module);