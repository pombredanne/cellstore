'use strict';

module.exports = function(grunt) {
  grunt.registerMultiTask('netdna', 'Interact with the NetDNA API', function() {
	var opt = this.options(),
		ca = opt.companyAlias, 
		ck = opt.consumerKey, 
		cs = opt.consumerSecret,
		done = this.async(),
		zone = this.data.zone;
	var netdna = require('netdna')({ companyAlias: ca, consumerKey: ck, consumerSecret: cs });

	function callback(err, response) {
	  if (err) {
		  grunt.log.errorlns("Unable to purge cache for zone " + zone);
		  if (response) grunt.verbose.writelns(JSON.stringify(response));
		  grunt.fail.warn(err.data, err.statusCode);
	  }
	  else {
		  grunt.log.oklns("Purged cache for zone " + zone);
		  if (response) grunt.verbose.writelns(JSON.stringify(response));
	  }
	  done();
	}
	
	if (zone)
		netdna.delete('zones/pull.json/' + zone + '/cache', callback);
	else grunt.fail.warn("zone id missing or not a string");
  });
}
