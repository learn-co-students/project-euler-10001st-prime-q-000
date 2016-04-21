# Implement your procedural solution here!
#easy way
require 'prime'

def prime_number_for(iteration)
  Prime.first(iteration).last
end

#hard way

def factors?(input)
  (1...input).to_a.keep_if{|num| input % num == 0}
end

def prime?(input)
  factors?(input) == [1]
end

def prime_iteration(iteration)
  primes = [0]
  counter = 0
  until primes.count >= iteration
    if prime?(counter)
      primes.push(counter)
      counter += 1
    else
      counter += 1
    end
  end
  return primes[-1]
end 




