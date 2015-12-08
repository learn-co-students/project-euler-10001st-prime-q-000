# Implement your procedural solution here!

def prime_number_for(element)
    list_of_primes =[]
    x = 2
    while list_of_primes.length < element
        if prime?(x)
            list_of_primes << x
        end
        x += 1
    end
    return list_of_primes[-1]
end


def prime?(num)
    if num == 1 || num == 0
        return false
    elsif num == 2
        return true
    else
        factors = (2..Math.sqrt(num)).to_a.detect {|x| num % x == 0}
        if factors == nil
            return true
        else
            return false
        end
    end
end
