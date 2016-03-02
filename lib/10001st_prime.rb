# Implement your procedural solution here!



def is_prime?(num)
  2.upto(num-1).each { |test| return false if num % test == 0 }
  true
end



def prime_number_for(amount)
  primes = [] 
  number = 2


  while  true 
    if is_prime?(number)
      primes << number 
        if primes.count == amount
          return primes.last
        end
    end
      
    if number.even?
      number += 1 
    else
      number += 2
    end

  end

end