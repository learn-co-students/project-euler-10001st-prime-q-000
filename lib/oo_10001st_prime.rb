# Implement your object-oriented solution here!
class Prime
  def initialize(nth_element)
    @nth_element = nth_element # Felt like doing something different
  end

  def number
    (Prime.first @nth_element)[-1]
  end

end
