# Implement your object-oriented solution here!
class Prime
  def initialize(nth)
    @nth = nth
  end
  def number
    Prime.take(@nth).last
  end
end
