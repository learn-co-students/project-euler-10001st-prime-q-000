# Implement your procedural solution here!

# Using Sieve of Eratostheses algorithm to gather primes numbers efficiently
# Source of code: http://rosettacode.org/wiki/Sieve_of_Eratosthenes#Ruby
require_relative 'eratosthenes'

# Returns the nth prime number up to 1,000,000th prime number(15,485,863)
# Calculating until the 1,000,000th prime number may cause lag. Average runtime for program is 1.4 secs.
def prime_number_for(nth_element)
  number = 15485863
  return "Cannot calculate that prime number." if nth_element <= 0 || nth_element > 1000000
  primes = eratosthenes(number)

  return primes[nth_element - 1]

end

prime_number_for(1)