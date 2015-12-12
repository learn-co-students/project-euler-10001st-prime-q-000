# Implement your procedural solution here!

def prime_number_for(limit, prime=[2,3])

six1 = 5
six2 = 7

loop do
break if prime.length >= limit
    count1=0
    try = []

    while (!prime[count1].nil?  && try.length == 0 && six1 > prime[(prime.length-1)])

        
     try.push(1) if six1 % prime[count1] == 0
        
        count1+=1

    end

   
  prime.push(six1)  if try.length ==0 && six1 > prime[(prime.length-1)]
    

    break if prime.length >= limit

    count2=0
    try = []

    while (!prime[count2].nil?  && try.length == 0 && six2 > prime[(prime.length-1)])

        
   try.push(1) if six2 % prime[count2] == 0
        
       count2+=1
    end

    prime.push(six2) if try.length ==0 && six2 > prime[(prime.length-1)] 
    
    break if prime.length >= limit

    six1+=6
    six2+=6
end


prime.pop if limit == 1

return prime[(prime.length-1)]
end






