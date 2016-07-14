# Implement your object-oriented solution here!


class Prime
    def initialize(nth_element)
      @nth_element =  (nth_element)
    end

    def number
     current = 3
     primes = [2]

     while primes.size < @nth_element
       primes << current if !(2..(current**0.5)).any?{ |p| current % p == 0 }
       current += 2
     end
       primes.last
    end
end
