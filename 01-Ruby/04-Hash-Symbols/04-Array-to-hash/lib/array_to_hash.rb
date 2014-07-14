

def array_to_hash(array)
  #TODO: implement the method :)

  hash = Hash.new
  array.each_with_index {|x, value|
  hash[value] = x
    }

  hash
end
array_to_hash(["a", "b", "c"])
