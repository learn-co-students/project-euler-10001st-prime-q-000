# Implement your procedural solution here!
def prime_check(num)
	(2..num-1).each {|count| return false if num % count == 0}
	return true
end

def prime_number_for(index_limit)
	pieces = [2]
	iter = 3
	while pieces.count < index_limit
		if prime_check(iter)
			pieces << iter
		end
		iter += 2
	end
	pieces[-1]
end
