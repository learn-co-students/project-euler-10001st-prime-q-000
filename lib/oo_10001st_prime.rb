# Implement your object-oriented solution here!
require 'prime'

class Prime

  def initialize(nth_element)
    @nth_element = nth_element
  end

  def number
    Prime.take(@nth_element)[-1]
  end

end

