def is_prime?(number)
  return false if number == 0 || number == 1
  integers =* (2..Math.sqrt(number).round)
  integers.each {|i| return false if number % i == 0}
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

