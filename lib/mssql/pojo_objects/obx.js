(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function obx(){
		this.obxid = '';
		this.nombre = '';
		this.nombrehl7 = '';
		this.categoria = '';
		this.color = '';
		this.grupo = '';
		this._metadata = {
			attrs: {
				'obxid' : {type: 'int', PK: 1},
				'nombre' : {type: 'nvarchar'},
				'nombrehl7' : {type: 'nvarchar'},
				'categoria' : {type: 'nvarchar'},
				'color' : {type: 'nvarchar'},
				'grupo' : {type: 'nvarchar'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'obx'
		};
		Pojo.call(this);
	}
	obx.prototype = Object.create(Pojo.prototype);
	obx.prototype.constructor = obx;
	module.exports = obx;
})(module);