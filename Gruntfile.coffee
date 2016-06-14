module.exports = (grunt) ->
	grunt.loadNpmTasks 'grunt-mocha-test'
	
	grunt.initConfig
		mochaTest:
			unit:
				options:
					reporter: 'spec',
					require: 'coffee-script/register'
				src: ['test/unit/**/*.coffee']

	grunt.registerTask 'test:unit', ['mochaTest:unit']

