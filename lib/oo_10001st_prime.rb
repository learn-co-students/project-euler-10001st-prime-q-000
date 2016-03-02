# Implement your object-oriented solution here!


class Prime

  attr_accessor :index, :number, :result 

  def initialize(prime)
    @prime = prime 
    @index = 2
    @result = [] 
  end

  def prime?(number)
    2.upto(number-1).each { |test| return false if number % test == 0 }
    true
  end
  
  def number
      while true 
        if prime?(index)
          result << index
          if result.count == @prime
            return result.last 
          end
        end

        if @index.even?
          @index += 1
        else
          @index += 2
        end

      end

  end

end

