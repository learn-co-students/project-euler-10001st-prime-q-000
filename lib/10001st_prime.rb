# Implement your procedural solution here!
def is_prime?(number)
  return false if number == 0 || number == 1
  (2..Math.sqrt(number).round).to_a.each do |i|
    if number % i == 0
      return false
    end
  end
  true
end

def prime_number_for(nth_element)
  count = 0
  number = 0
  until count == nth_element
    number = number + 1
    if is_prime?(number)
      count = count + 1
    end
  end
  number
end
