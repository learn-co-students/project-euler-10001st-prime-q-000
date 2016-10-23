# Implement your object-oriented solution here!

class Prime
  def initialize(nth_element)
    @nth_element = nth_element
  end

  def number
  	i = 0
  	prime_num = 0
  	prime_count = 0

  	loop do
  		while prime_count <= @nth_element
  			if is_prime?(i)
  				prime_num = i
  				prime_count += 1
  				if prime_count == @nth_element
  					return prime_num
  				end
  			end
  			i += 1
  		end
  	end
  end

  def is_prime?(num)
  	x = 2

  	return false if num < 2

  	while x < num
  		if (num % x == 0)
  			return false
  		end
  		x += 1
  	end
  	return true
  end
end
