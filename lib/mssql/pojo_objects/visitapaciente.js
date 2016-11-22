(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function visitapaciente(){
		this.visitapacienteid = '';
		this.nhc = '';
		this.icu = '';
		this.clase = '';
		this.localizacion = '';
		this.facultativoasignado = '';
		this.facultativofamilia = '';
		this.servicio = '';
		this.localizaciontemporal = '';
		this.origenadmision = '';
		this.estado = '';
		this.financialclass = '';
		this.indicadorcoste = '';
		this.sintomas = '';
		this.localizacionpendiente = '';
		this.fechaadmision = '';
		this.fechaalta = '';
		this.idvisitaalternativo = '';
		this.transferidoa = '';
		this.transferidodoc = '';
		this.razonadmision = '';
		this.razontransferencia = '';
		this.duracionestimadaestancia = '';
		this.duracionrealestancia = '';
		this.descripcionvisita = '';
		this.codigoestado = '';
		this.alergia = '';
		this.fechaversion = '';
		this.patienttype = '';
		this.idproceso = '';
		this.limbo = '';
		this._metadata = {
			attrs: {
				'visitapacienteid' : {type: 'bigint', PK: 1},
				'nhc' : {type: 'bigint'},
				'icu' : {type: 'int'},
				'clase' : {type: 'nvarchar'},
				'localizacion' : {type: 'int'},
				'facultativoasignado' : {type: 'nvarchar'},
				'facultativofamilia' : {type: 'nvarchar'},
				'servicio' : {type: 'nchar'},
				'localizaciontemporal' : {type: 'int'},
				'origenadmision' : {type: 'nvarchar'},
				'estado' : {type: 'int'},
				'financialclass' : {type: 'nvarchar'},
				'indicadorcoste' : {type: 'nchar'},
				'sintomas' : {type: 'nvarchar'},
				'localizacionpendiente' : {type: 'int'},
				'fechaadmision' : {type: 'datetime', nullable: true},
				'fechaalta' : {type: 'datetime', nullable: true},
				'idvisitaalternativo' : {type: 'nvarchar'},
				'transferidoa' : {type: 'nvarchar'},
				'transferidodoc' : {type: 'nvarchar'},
				'razonadmision' : {type: 'nvarchar'},
				'razontransferencia' : {type: 'nvarchar'},
				'duracionestimadaestancia' : {type: 'int'},
				'duracionrealestancia' : {type: 'int'},
				'descripcionvisita' : {type: 'nvarchar'},
				'codigoestado' : {type: 'varchar'},
				'alergia' : {type: 'nvarchar'},
				'fechaversion' : {type: 'datetime'},
				'patienttype' : {type: 'varchar', nullable: true},
				'idproceso' : {type: 'nvarchar', nullable: true},
				'limbo' : {type: 'int', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'visitapaciente'
		};
		Pojo.call(this);
	}
	visitapaciente.prototype = Object.create(Pojo.prototype);
	visitapaciente.prototype.constructor = visitapaciente;
	module.exports = visitapaciente;
})(module);