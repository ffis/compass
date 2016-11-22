(function(module){
	'use strict';
	var Pojo = require('../pojo');

	function trigger(){
		this.triggerid = '';
		this.eventtype = '';
		this.eventparam = '';
		this.action = '';
		this.actionparam = '';
		this.enabled = '';
		this._metadata = {
			attrs: {
				'triggerid' : {type: 'int', PK: 1},
				'eventtype' : {type: 'varchar'},
				'eventparam' : {type: 'varchar'},
				'action' : {type: 'varchar'},
				'actionparam' : {type: 'varchar'},
				'enabled' : {type: 'int'}
			},
			attrsid: [],
			sqls: {
				insert: '',
				select: '',
				delete: '',
				get: ''
			},
			tablename: 'trigger'
		};
		Pojo.call(this);
	}
	trigger.prototype = Object.create(Pojo.prototype);
	trigger.prototype.constructor = trigger;
	module.exports = trigger;
})(module);