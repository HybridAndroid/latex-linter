class Linter
	constructor: (@content) ->
	
	lint: () ->
		openBraces = (@content.match(/\{/g) || []).length
		closeBraces = (@content.match(/\}/g) || []).length
		errors = []
		if openBraces != closeBraces
			errors.push {
				type: "mismatched_curly_brace"
			}
		return errors

Linter.lint = (content) ->
	linter = new Linter(content)
	return linter.lint()
		
module.exports = Linter