# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  @y = 0
  if arr.length==0
  @y =  0
  elsif arr.length==1
  @y = arr[0]
  else
  b = arr.sort{|a,b| b<=>a}
  @y = b[0]+b[1]
  end
  @y
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # puts arr, n
  hash = Hash.new()
  for p in arr
    if hash.has_key?(n-p)
      return true
    end
    hash[p] = 1
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
def initialize(isbn, price)
  if isbn.length == 0
    raise ArgumentError, "ISBN is empty!"
  end
  if price<=0
    raise ArgumentError, "Price is 0 or Negative!"
  end
  
  @isbn = isbn
  @price = price
end

def price_as_string()
  "$%.2f" % [@price] 
end
end