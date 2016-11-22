(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function registroactividad(){
		this.registroactividadid = '';
		this.usr = '';
		this.fecha = '';
		this.url = '';
		this._metadata = {
			attrs: {
				'registroactividadid' : {type: 'int', PK: 1},
				'usr' : {type: 'varchar', nullable: true},
				'fecha' : {type: 'datetime', nullable: true},
				'url' : {type: 'varchar', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'registroactividad'
		};
		Pojo.call(this);
	}
	registroactividad.prototype = Object.create(Pojo.prototype);
	registroactividad.prototype.constructor = registroactividad;
	module.exports = registroactividad;
})(module);