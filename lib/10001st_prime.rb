# Implement your procedural solution here!
  def prime_number_for(nth_element)
    num_primes = 2 #count the first 2 primes
    prime_nums = [3]
    current_prime = 3
    next_num = current_prime + 2

    while num_primes < nth_element
      if prime?(prime_nums, next_num)
        prime_nums << next_num
        num_primes += 1
      end
      next_num += 2
    end
    prime_nums[-1]
  end


  def prime?(prime_nums, number)
    return true if prime_nums.all? {|pm| number % pm > 0 }
    false
  end
