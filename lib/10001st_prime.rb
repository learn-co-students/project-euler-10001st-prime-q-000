# Implement your procedural solution here!
def prime_number_for(number)
  if number == 1
    2
  elsif number == 2
    3
  elsif number == 3
    5
  else 
    counter = 2
    index = 5
    offset = 0
    until counter == number
      if index % 6 == 1 
        if is_prime?(index)
          if counter == number - 1
            counter += 1
            offset = -4
          else
            counter += 1
          end
        end
        index += 4
      else
        if is_prime?(index)
          if counter == number - 1
            counter += 1
            offset = -2
          else
            counter += 1
          end
        end
        index += 2
      end
    end
    index + offset
  end
end

# This method can only take integers larger than 4 that are congruent to 1 or 5
# modulo 6.
def is_prime?(number)
  (5..number - 1).all? { |i| number % i != 0}
end