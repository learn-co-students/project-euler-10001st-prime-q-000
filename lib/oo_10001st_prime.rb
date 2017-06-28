# Implement your object-oriented solution here!
class Prime

  def number(num)
    counter = 0
    i = 2
    while counter < num
      if i.prime?
        counter += 1
      end
      i + 1 unless counter == num
    end
    return i
  end

end
