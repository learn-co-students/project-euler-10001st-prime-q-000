# Implement your procedural solution here!
def prime_number_for(nth_element)
	i = 0
	prime_num = 0
	prime_count = 0

	loop do
		while prime_count <= nth_element
			if is_prime?(i)
				prime_num = i
				prime_count += 1
				if prime_count == nth_element
					return prime_num
				end
			end
			i += 1
		end
	end
end

def is_prime?(nth_element)
	x = 2

	return false if nth_element < 2

	while x < nth_element
		if (nth_element % x == 0)
			return false
		end
		x += 1
	end
	return true
end
