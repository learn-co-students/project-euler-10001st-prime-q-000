# Implement your procedural solution here!
def prime_number_for(nth_element)

  def is_prime?(num)
    Math.sqrt(num).floor.downto(2).each {|i| return false if num % i == 0}
    return true
  end

  prime_array = []
  counter = 2

  while prime_array.length < nth_element
    if is_prime?(counter)
      prime_array.push(counter)
    end
    counter += 1
  end

  return prime_array[nth_element-1]
end

