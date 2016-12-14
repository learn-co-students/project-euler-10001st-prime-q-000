# Implement your object-oriented solution here!

require 'prime'

class Prime

	attr_accessor :input

	def initialize(input)
		self.input = input
	end

	def number
		Prime.first(self.input).last
	end

end