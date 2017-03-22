class Prime

  def initialize(num)
    @num = num
  end

  def number
    primes = []
    i = 2
    n = 0
    loop do
      if isPrime?(i)
        primes << i
        n += 1
      end
      break if n == @num
      i += 1
    end
    primes.last
  end

  def isPrime?(num)
    prime = num
    return false if num.even? && num != 2
    (2..Math.sqrt(num).to_i).each do |i|
      if num % i == 0
        return false
        break
      end
    end
    true
  end
end
