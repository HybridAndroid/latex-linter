Linter = require "../../src/Linter"
require("chai").should()

describe "Mismatched Curly Braces", ->
	it "should not error when braces match", ->
		Linter.lint("foo {bar} baz").should.deep.equal []
		
	it "should error when braces do not match", ->
		Linter.lint("foo {bar baz").should.deep.equal [{
			type: "mismatched_curly_brace"
		}]
		
	it "should ignore escaped braces", ->
		Linter.lint("foo {bar baz").should.deep.equal []