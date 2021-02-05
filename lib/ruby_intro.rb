# When done, submit this entire file to the autograder.

# Part 1

def sum arr
   # YOUR CODE HERE
   array_sum = 0;
   arr.each  { |value| array_sum+=value; }
   return array_sum;
end


def max_2_sum arr
  # YOUR CODE HERE
  max_max=-999999;
  max_min=-999999;
  return 0 if (arr.length == 0);
  return arr[0] if (arr.length == 1);
  arr.each do |value|
    if(max_max <= value) 
      max_min = max_max;
      max_max = value;
    elsif (max_min < value)
      max_min = value;
    end
  end
  return max_max+max_min;
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr_hash = {};
  arr.each do |value|
    diff = n-value;
    return true if (arr_hash.has_key?(diff));
    arr_hash[value] = 1;
  end
  return false;
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}";
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if (s=~/^[aeiou]/i ||  (!(s=~ /^\w/)) );
  return true;
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if (!(s=~/^[10]+$/));
  return true if ((s.to_i&0b11) == 0);
  return false;
end

# Part 3

class BookInStock
# YOUR CODE HERE
  #isbn="";
  #price=0;
  attr_accessor :isbn, :price;
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?;
    raise ArgumentError if price <= 0;
    @isbn = isbn;
    @price = price;
  end
  
  def price_as_string
    return "$%.2f" % price;
  end
  
end
