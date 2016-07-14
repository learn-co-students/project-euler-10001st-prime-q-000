# Implement your procedural solution here!


def prime_number_for(nth_element)
    number = 3
    primes = [2]

    while primes.size < nth_element
        primes << number if !(2..(number**0.5)).any?{ |p| number % p == 0 }
          number += 2
    end
        primes.last
end

#pushing the primes into an array until it reaches the same length size
#as the input then pull out the last prime number with the .last method.
# an much easier way to do this is the use require 'prime'    prime_number_for = Prime.take(nth_element).last
