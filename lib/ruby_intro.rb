# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  total = 0
  for x in array
    total += x
  end
  return total
end

def max_2_sum(array)
  max1 = -100
  max2 = -100
  if array.size == 0
    return 0
  end
  if array.size == 1
    return array[0]
  end
  for x in array
    if x > max1
      max1 = x
      next
    end
    if x <= max1 and x >= max2
      max2 = x
    end
  end
  return max1 + max2
end

def sum_to_n?(array, n)
  if array.size == 0
    return false
  end
  if array.size == 1
    return false
  end
  neededVal = Hash.new
  for x in array
    temp = n - x
    puts "n: #{n}, x: #{x}, temp: #{temp}"
    neededVal[x] = temp
    puts "#{neededVal.has_key?(temp)}"
    if neededVal.has_key?(temp) && (x != temp)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s.length < 1
    return false
  end
  if not s[0].match(/^[[:alpha:]]$/)
    return false
  end
  vowels = ["a", "e", "i", "o", "u"]
  newString = s.downcase
  puts "First downcase letter: #{newString[0]}"
  if vowels.include? newString[0]
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(s)
  puts "Original: #{s}"
  if s !~ /^[0-1]{1,}$/
    return false
  end
  int_s = s.to_i(2)
  puts "int_s: #{int_s}"
  if int_s % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = Float(price)
  end
  
  attr_reader :isbn, :price
  attr_accessor :isbn, :price
  
  def price_as_string
    format("$%0.2f", price)
  end
end