class Prime
  def initialize(nth_element_int)
    @nth_element = nth_element_int
  end

  def number()
    prime_array = Prime.first @nth_element
    return prime_array[prime_array.size-1]
  end
end