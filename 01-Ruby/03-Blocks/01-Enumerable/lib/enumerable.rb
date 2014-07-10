def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  sum=0

  array.each_with_index do |x,index|
    if index%2==1
      sum=sum+x
    end
  end

  return sum
end
sum_odd_indexed([1,2,3])


def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
array.select {|number| number.even? }

end
even_numbers([1,2,3,8,9])

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject

  array.reject do|w|
    w.length>max_length

  end

end
short_words(["ami","maison","ordinateur","chaise","instituteur"], 5)



def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find { |n| n < limit }

end
first_under([1,2,3,8,9],8)

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map do |word| "#{word}!"
  end

end
add_bang(["ami","maison","ordinateur","chaise","instituteur"])

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  array.reduce(:*)

end
product([8,9,10])

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice

  array2=[]
  array.each_slice(2) { |pairs| array2<<pairs.sort }
return array2
end
sorted_pairs(["ami","maison","ordinateur","chaise","instituteur","voiture"])



