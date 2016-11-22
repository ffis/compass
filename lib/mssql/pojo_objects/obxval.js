(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function obxval(){
		this.obxvalid = '';
		this.facultativo = '';
		this.obx = '';
		this.codigo = '';
		this.nhc = '';
		this.icu = '';
		this.value = '';
		this.fechaobservacion = '';
		this.fechanotificacion = '';
		this._metadata = {
			attrs: {
				'obxvalid' : {type: 'int', PK: 1},
				'facultativo' : {type: 'nvarchar'},
				'obx' : {type: 'int'},
				'codigo' : {type: 'varchar'},
				'nhc' : {type: 'int'},
				'icu' : {type: 'int'},
				'value' : {type: 'text'},
				'fechaobservacion' : {type: 'datetime'},
				'fechanotificacion' : {type: 'datetime'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'obxval'
		};
		Pojo.call(this);
	}
	obxval.prototype = Object.create(Pojo.prototype);
	obxval.prototype.constructor = obxval;
	module.exports = obxval;
})(module);