# Implement your object-oriented solution here!
class Prime

  FIRST_10 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

  def initialize(index)

    @index = index
    @prime_nums = []
    @prime_nums = FIRST_10.each { |x| @prime_nums << x }

  end

  def fill_array(limit)

    if(@prime_nums.any? { |x| limit % x == 0 } )
      @prime_nums
    else
      arr_counter = @prime_nums[-1] + 2
      until arr_counter > Math.sqrt(limit)
        @prime_nums << arr_counter
        arr_counter += 2
      end
    end
    @prime_nums = @prime_nums.uniq

  end

  def if_prime(num_check)

    if( @prime_nums.any? { |x| num_check % x == 0} )
      return false
    else
      fill_array(num_check)
      if( @prime_nums.any? { |x| num_check % x == 0 } )
        return false
      else
        return true
      end

    end

  end

  def fill_primes

    counter = @prime_nums[-1] + 2
    until (@prime_nums.length >= @index)

      if(if_prime(counter))
        @prime_nums << counter
        counter += 2
      else
        counter += 2
      end

    end

  end

  def number

    fill_primes
    @prime_nums[@index - 1]

  end

end
