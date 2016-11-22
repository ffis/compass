(function(module){
	'use strict';

	var path = require('path');

	module.exports = {
		getPojoClass: function(classname){
			return require(path.join(__dirname, 'pojo_objects', classname));
		}
	};
})(module);