(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function ficticios(){
		this.nombre = '';
		this._metadata = {
			attrs: {
				'nombre' : {type: 'varchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'ficticios'
		};
		Pojo.call(this);
	}
	ficticios.prototype = Object.create(Pojo.prototype);
	ficticios.prototype.constructor = ficticios;
	module.exports = ficticios;
})(module);