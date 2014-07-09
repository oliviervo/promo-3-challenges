def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
 sum=0
  i=0
  range=max-min

  while i<=range
  sum=sum+min+i
  i+=1

  end

sum
end
sum_with_while(3,10)


def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
  sum=0
  i=min

  for i in (min..max)

  sum=sum+i
  i+=1


  end
  sum
end
sum_with_for(3,5)



def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
fail(ArgumentError) if min>max

sum=min
if min == max
  return max

else
  min=min+1
  sum= sum+sum_recursive(min,max)
end

end
sum_recursive(10,10)

