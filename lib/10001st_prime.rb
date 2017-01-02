# Implement your procedural solution here!
require 'prime'

def prime_number_for(nth_element)
  Prime.take(nth_element)[-1]
end
