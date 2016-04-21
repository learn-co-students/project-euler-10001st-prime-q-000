# Implement your object-oriented solution here!
#easy way
require 'prime'

class Prime
  def initialize(iteration)
    @iteration = iteration
  end

  def number
    Prime.first(@iteration).last
  end
end

#hard way
class Primes
  def initialize
    @primes = []
    @counter = 0
  end

  def factors?(input)
    (1...input).to_a.keep_if{|num| input % num == 0}
  end

  def prime?(input)
    factors?(input) == [1]
  end

  def index(iteration)
    until @primes.count >= iteration
      if prime?(@counter)
        @primes.push(@counter)
        @counter += 1
      else
        @counter += 1
      end
    end
    return @primes[-1]
  end
end