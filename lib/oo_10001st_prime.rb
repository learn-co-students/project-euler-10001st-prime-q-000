# Implement your object-oriented solution here!
class Prime
  def initialize(nth_prime)
    @nth_prime = nth_prime
    @prime_nums = [3]
  end

  def number
    num_primes = 2 #count the first 2 primes
    current_prime = 3
    next_num = current_prime + 2

    while num_primes < @nth_prime
      if prime?(next_num)
        @prime_nums << next_num
        num_primes += 1
      end
      next_num += 2
    end
      @prime_nums[-1]
  end

  def prime?(number)
    return true if @prime_nums.all? {|pm| number % pm > 0 }
    false
  end
end

