# Implement your procedural solution here!
FIRST_10 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

def prime_number_for(limit)
  prime_number_array = fill_primes(limit)
  prime_number_array[limit - 1]
end

def fill_primes(limit)

  prime_nums = []
  prime_nums = FIRST_10.each { |x| prime_nums << x }
  counter = prime_nums[-1] + 2
  until (prime_nums.length >= limit)

    if(if_prime(counter))
      prime_nums << counter
      counter += 2
    else
      counter += 2
    end

  end

  prime_nums

end

def if_prime(num_check)

  if( FIRST_10.any? { |x| num_check % x == 0} )
    return false
  else
    den_arr = fill_array(num_check)
    if( den_arr.any? { |x| num_check % x == 0} )
      return false
    else
      return true
    end
  end

end

def fill_array(limit)

  counter = 3
  denom_arr = [2]
  until counter  > Math.sqrt(limit)
    denom_arr << counter
    counter += 2
  end
  denom_arr
end
