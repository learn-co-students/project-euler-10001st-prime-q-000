# Implement your procedural solution here!
def prime_number_for(num)
  primes = [2]
  starter = 3
  while primes.length < num
    if prime?(starter)
      primes.push(starter)
    end
    starter+=1
  end
  return primes.last
end

def prime?(n)
  i = 2
  while i < n
    if n%i==0
      return false
      break
    else
      i += 1
    end
  end
  return true
end
