class Prime
  def initialize(limit)
    @limit = limit
  end

  def number
    prime_number_for(@limit)
  end

end