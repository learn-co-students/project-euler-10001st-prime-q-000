# Implement your object-oriented solution here!
class Prime
  attr_reader :num, :number
  def initialize(num)
    @num = num
    @number = prime_number_for
  end
  def prime_number_for
    primes = []
    i = 2
    while primes.length < num
      primes << i if prime?(i)
      i += 1
    end
    primes[-1]
  end

  def prime?(num)
    if num < 2
      return false
    end
    i = 2
    lim = num
    while i < lim
      if num % i == 0
        return false
      end
      i += 1
      lim = num / i + 1
    end
    return true
  end
end