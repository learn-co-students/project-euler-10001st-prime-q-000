# Implement your procedural solution here!
def prime_number_for(num)
  counter = 0
  i = 2
  while counter < num
    if i.prime?
      counter += 1
    end
    i + 1 unless counter == num
  end
  return i
end
