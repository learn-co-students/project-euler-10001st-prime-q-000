# Implement your object-oriented solution here!
class Prime
  def initialize(value)
  	@value = value
  end

  def number
    arr = []
    counter = 2

    until arr.size == @value
      arr << counter if is_prime?(counter)
      counter += 1
    end

    arr[-1]
  end

  def is_prime?(value)
    (2..(value-1)).to_a.each do |n|
      if ( value %n == 0)
        return false
      end
    end

    true
  end
end
