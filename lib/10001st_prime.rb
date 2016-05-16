# Implement your procedural solution here!
require 'prime'

def prime_number_for(nth)
  (Prime.first nth)[-1] # Is this cheating? Next time I'll use the Sieve of Eratosthenes
end
