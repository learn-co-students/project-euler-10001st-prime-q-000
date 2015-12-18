# Implement your object-oriented solution here!

require_relative '10001st_prime'

# WARNING! TAKES AT LEAST 1.4 SECS TO INITALIZE PRIME each time
#   - Program calculates up to the millionth prime number and takes a while to run
class Prime
  attr_accessor :number
  def initialize(nth_element)
    @number = prime_number_for(nth_element)
  end
end