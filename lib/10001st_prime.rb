def prime_number_for(limit)
  i = 2
  j = 1
  while j < limit
    i += 1
    if is_prime(i)
      j += 1
    end
  end
  i
end

def is_prime(limit)
  isPrime = true
  cc = 2
  while cc < limit && isPrime
    if limit % cc == 0
      isPrime = false
    end
    cc += 1
  end
  isPrime
end