# Implement your procedural solution here!
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
  (2..Math.sqrt(num)).each do |i|
    if num % i == 0
      return false
    end
  end
  true
end
