(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function vectorialbody(){
		this.vectorialbodyid = '';
		this.nombre = '';
		this.ruta = '';
		this.genero = '';
		this._metadata = {
			attrs: {
				'vectorialbodyid' : {type: 'int', PK: 1},
				'nombre' : {type: 'varchar'},
				'ruta' : {type: 'varchar'},
				'genero' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'vectorialbody'
		};
		Pojo.call(this);
	}
	vectorialbody.prototype = Object.create(Pojo.prototype);
	vectorialbody.prototype.constructor = vectorialbody;
	module.exports = vectorialbody;
})(module);