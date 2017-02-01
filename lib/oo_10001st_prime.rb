# Implement your object-oriented solution here!
class Prime
  attr_reader :number

  def initialize(nth_element)
    @number = prime_number_for(nth_element)
  end

  def prime_number_for(nth_element)
    count = 0
    number = 0
    while count != nth_element
      number += 1
      count += 1 if prime?(number)
    end
    number
  end

  def prime?(num)
    return false if num.zero? || num == 1
    (2..Math.sqrt(num).to_i).each do |i|
      return false if num % i == 0
    end
    true
  end
end
