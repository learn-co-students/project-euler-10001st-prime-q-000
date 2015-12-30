class Prime
  def initialize(nth_element)
    @nth_element = nth_element
  end

  def number
    counter = 0
    pseudo_primes.each do |pseudo_prime|
      if is_prime?(pseudo_prime)
        counter += 1
        return pseudo_prime if counter == @nth_element
      end
    end
  end

  def is_prime?(number)
    return true if number == 2
    (2...number).each do |factor|
      if number%factor == 0
        return false
      end
    end
    return true
  end

  def pseudo_primes
    pseudo_primes =[2,3]
    (4...@nth_element*100).each do |number|
      if number%2!=0 && number%3!=0
        pseudo_primes << number
      end
    end
    pseudo_primes
  end
end

