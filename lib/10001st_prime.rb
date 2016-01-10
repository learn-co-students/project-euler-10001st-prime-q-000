require 'pry'
require 'prime'

def prime_number_for(nth_element)
  prime_array = Prime.first nth_element
  return prime_array[prime_array.size-1]
end