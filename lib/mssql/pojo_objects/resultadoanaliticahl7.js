(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function resultadoanaliticahl7(){
		this.resultadoanaliticahl7id = '';
		this.contador = '';
		this.solicitud = '';
		this.diafinmuestra = '';
		this.diamuestra = '';
		this.solicitante = '';
		this.fecharesultado = '';
		this.fechanotificacion = '';
		this.indicadorhl7 = '';
		this.tipovalor = '';
		this.valortexto = '';
		this.valornumerico = '';
		this.alerta = '';
		this.limiteinf = '';
		this.limitesup = '';
		this.unidad = '';
		this.estadoresultado = '';
		this.comentario = '';
		this.sourcecomentario = '';
		this.analiticahl7 = '';
		this._metadata = {
			attrs: {
				'resultadoanaliticahl7id' : {type: 'int', PK: 1},
				'contador' : {type: 'int'},
				'solicitud' : {type: 'int'},
				'diafinmuestra' : {type: 'datetime', nullable: true},
				'diamuestra' : {type: 'datetime', nullable: true},
				'solicitante' : {type: 'varchar'},
				'fecharesultado' : {type: 'datetime', nullable: true},
				'fechanotificacion' : {type: 'datetime', nullable: true},
				'indicadorhl7' : {type: 'int'},
				'tipovalor' : {type: 'varchar'},
				'valortexto' : {type: 'varchar'},
				'valornumerico' : {type: 'float'},
				'alerta' : {type: 'varchar'},
				'limiteinf' : {type: 'varchar'},
				'limitesup' : {type: 'varchar'},
				'unidad' : {type: 'varchar'},
				'estadoresultado' : {type: 'varchar'},
				'comentario' : {type: 'text'},
				'sourcecomentario' : {type: 'varchar'},
				'analiticahl7' : {type: 'int'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'resultadoanaliticahl7'
		};
		Pojo.call(this);
	}
	resultadoanaliticahl7.prototype = Object.create(Pojo.prototype);
	resultadoanaliticahl7.prototype.constructor = resultadoanaliticahl7;
	module.exports = resultadoanaliticahl7;
})(module);