# Implement your procedural solution here!
def is_prime?(target)
  if target==2 || target==3 || target==5
    return true
  elsif target%2==0 || target%3==0 || target<=0
    return false
  end
  candidate = 5
  while candidate<=(Math.sqrt(target))
    if target%candidate==0 || target%(candidate+2)==0
      return false
    end
    candidate+=6
  end

  if target%candidate==0 && candidate!=Math.sqrt(target)
    return false
  end
  return true
end

def prime_generator(limit)
  primes=Array.new()
  counter = 2
  while primes.length < limit
    if is_prime?(counter)
      primes.push(counter)
    end
    counter+=1
  end
  return primes
end

def prime_number_for(nth)
  first_n_primes = prime_generator(nth)
  return first_n_primes.last
end
def largest_prime_factor(target)
#  puts "Target: #{target}"
  factors = Array.new()
  primes = Array.new()
  first_n_primes = prime_generator(1000)

  if first_n_primes.any?{|a| target%a==0}
    primes = first_n_primes.select{|a| target%a==0}
  end

  primes.sort
#  puts "primes: #{primes.join(" ")}"
#  puts "largest: #{primes.last}"
  return primes.last
end
