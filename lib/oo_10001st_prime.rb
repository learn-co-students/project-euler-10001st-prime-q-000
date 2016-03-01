# Implement your object-oriented solution here!
class Prime

  def initialize(number)
    @number = number
    @prime_array = []
    @counter = 2
  end

  def is_prime?
    Math.sqrt(@counter).floor.downto(2).each {|i| return false if @counter % i == 0}
    return true
  end

  def number
    while @prime_array.length < @number
      if is_prime?
        @prime_array.push(@counter)
      end
      @counter += 1
    end
    return @prime_array[@number-1]
  end

end