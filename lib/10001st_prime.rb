# Implement your procedural solution here!

# find the nth prime number
# set i = to the most recent prime number
# keep adding 2 until none of the prime numbers are factors
# push to array, and reset i to be last element of primes
# break loop when primes length is n

def prime_number_for(nth_element)
  
  primes = [2, 3]
  
  i = primes[-1]

  loop do
    j = 0

    primes.each do |prime|
      if i % prime == 0
        j += 1
      end
    end

    if j == 0
      primes << i
      i = primes[-1]
    else
      i += 2
    end

    if primes.length == nth_element
      break
    end

  end

  primes[-1]
end