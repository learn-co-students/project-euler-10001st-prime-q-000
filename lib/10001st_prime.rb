def is_prime?(number)
  return false if number.zero? || number == 1
  (2..Math.sqrt(number)).each do |i|
    if number % i == 0
      return false
    end
  end
  true
end

def prime_number_for(nth_element)
  count = 0
  number = 0
  while count != nth_element
    number += 1
    count += 1 if is_prime?(number)
  end
  number
end
