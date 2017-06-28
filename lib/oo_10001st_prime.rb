# Implement your object-oriented solution here!
require 'prime'

class Prime

  def initialize(num)
    @num = num
  end

  def number
    counter = 0
    i = 2
    while counter < @num
      if i.prime?
        counter += 1
      end
      i + 1 unless counter == @num
    end
    return i
  end

end
