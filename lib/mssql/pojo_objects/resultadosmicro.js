(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function resultadosmicro(){
		this.resultadosmicroid = '';
		this.idmensaje = '';
		this.nhc = '';
		this.cipautonomico = '';
		this.nif = '';
		this.nss = '';
		this.genero = '';
		this.fechanacimiento = '';
		this.nombre = '';
		this.apellidos = '';
		this.servicio = '';
		this.idvisita = '';
		this.ordencontrol = '';
		this.numeropeticion1 = '';
		this.numeropeticion2 = '';
		this.numeropeticion3 = '';
		this.fechatransaccion = '';
		this.fechaobservacion = '';
		this.fechaobservacion2 = '';
		this.fechaspecimen = '';
		this.fecharesultados = '';
		this.tipoprueba = '';
		this.valor = '';
		this.serviciodiagnostico = '';
		this.alerta = '';
		this.tipovalor = '';
		this.subtipovalor = '';
		this.dnitecnicolaboratorio = '';
		this.status = '';
		this.dangercode = '';
		this.fechanotificacion = '';
		this._metadata = {
			attrs: {
				'resultadosmicroid' : {type: 'int', PK: 1},
				'idmensaje' : {type: 'varchar'},
				'nhc' : {type: 'int'},
				'cipautonomico' : {type: 'varchar'},
				'nif' : {type: 'varchar'},
				'nss' : {type: 'varchar'},
				'genero' : {type: 'char'},
				'fechanacimiento' : {type: 'datetime'},
				'nombre' : {type: 'varchar'},
				'apellidos' : {type: 'varchar'},
				'servicio' : {type: 'varchar'},
				'idvisita' : {type: 'varchar'},
				'ordencontrol' : {type: 'varchar'},
				'numeropeticion1' : {type: 'varchar'},
				'numeropeticion2' : {type: 'varchar'},
				'numeropeticion3' : {type: 'varchar'},
				'fechatransaccion' : {type: 'datetime', nullable: true},
				'fechaobservacion' : {type: 'datetime', nullable: true},
				'fechaobservacion2' : {type: 'datetime', nullable: true},
				'fechaspecimen' : {type: 'datetime', nullable: true},
				'fecharesultados' : {type: 'datetime', nullable: true},
				'tipoprueba' : {type: 'int'},
				'valor' : {type: 'varchar'},
				'serviciodiagnostico' : {type: 'varchar'},
				'alerta' : {type: 'char'},
				'tipovalor' : {type: 'char'},
				'subtipovalor' : {type: 'varchar'},
				'dnitecnicolaboratorio' : {type: 'varchar'},
				'status' : {type: 'char'},
				'dangercode' : {type: 'char'},
				'fechanotificacion' : {type: 'datetime', nullable: true}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'resultadosmicro'
		};
		Pojo.call(this);
	}
	resultadosmicro.prototype = Object.create(Pojo.prototype);
	resultadosmicro.prototype.constructor = resultadosmicro;
	module.exports = resultadosmicro;
})(module);