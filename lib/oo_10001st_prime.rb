class Prime
  attr_reader :number

  def initialize(prime_count)
    @prime_count = prime_count
    @prime_candidate = 1
    @number = prime_number_for
  end

  def prime_number_for
    #Deal with the only even prime number: 2
    return 2 if @prime_count == 1
    @prime_count -= 1

    @prime_candidate = 1

    until @prime_count == 0
      @prime_candidate += 2
      @prime_count -= 1 if is_prime?
    end

    @prime_candidate
  end

  def is_prime?
    return true if @prime_candidate == 2
    return false if @prime_candidate % 2 == 0 || @prime_candidate == 1

    divisor = 3

    while divisor <= Math.sqrt(@prime_candidate)
      return false if @prime_candidate % divisor == 0
      divisor += 2
    end

    true
  end
end