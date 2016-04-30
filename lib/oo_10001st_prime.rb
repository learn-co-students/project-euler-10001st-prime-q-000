# Implement your object-oriented solution here!
class Prime
	def initialize(index_limit)
		@index_limit = index_limit
	end
	def prime_check(num)
		(2..num-1).each {|count| return false if num % count == 0}
		return true
	end
	def number
		pieces = [2]
		iter = 3
		while pieces.count < @index_limit
			if prime_check(iter)
				pieces << iter
			end
			iter += 2
		end
		pieces[-1]
	end
end
