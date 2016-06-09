# Implement your object-oriented solution here!
class Prime
  def initialize(k)
    @k = k
  end

  def number
    # sieve of eratosthenes

    n = 150000
    s = Array.new(n).fill(true,2)

    p = 2
    sqrt = Math.sqrt(n).floor

    while p < sqrt
      if !s[p]
        p += 1
        next
      end
        
      j=p*p
      
      until j >= n
        s[j] = false
        j += p
      end
      
      p += 1
    end

    count = 0
    i = 2

    while count < @k
      if s[i] == true
        count += 1
      end
      
      i += 1
    end

    return i-1
  end

end
