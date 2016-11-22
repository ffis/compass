(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function paciente(){
		this.pacienteid = '';
		this.nhc = '';
		this.idexterno = '';
		this.fechanacimiento = '';
		this.genero = '';
		this.estadocivil = '';
		this.religion = '';
		this.lugarnacimiento = '';
		this.citizenship = '';
		this.mstatus = '';
		this.nacionalidad = '';
		this.fechafallecimiento = '';
		this.md5datospersonalespaciente = '';
		this.datospersonales = '';
		this.fechaversion = '';
		this.prestacion = '';
		this.cp = '';
		this.esultimaversion = '';
		this.cip = '';
		this._metadata = {
			attrs: {
				'pacienteid' : {type: 'bigint', PK: 1},
				'nhc' : {type: 'bigint'},
				'idexterno' : {type: 'varchar'},
				'fechanacimiento' : {type: 'datetime'},
				'genero' : {type: 'char'},
				'estadocivil' : {type: 'char'},
				'religion' : {type: 'nchar'},
				'lugarnacimiento' : {type: 'nchar'},
				'citizenship' : {type: 'nchar'},
				'mstatus' : {type: 'nchar'},
				'nacionalidad' : {type: 'nchar'},
				'fechafallecimiento' : {type: 'datetime', nullable: true},
				'md5datospersonalespaciente' : {type: 'varchar'},
				'datospersonales' : {type: 'bigint'},
				'fechaversion' : {type: 'datetime'},
				'prestacion' : {type: 'varchar'},
				'cp' : {type: 'varchar'},
				'esultimaversion' : {type: 'int'},
				'cip' : {type: 'varchar', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'paciente'
		};
		Pojo.call(this);
	}
	paciente.prototype = Object.create(Pojo.prototype);
	paciente.prototype.constructor = paciente;
	module.exports = paciente;
})(module);