# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
	total = 0
	if array.length > 0
		array.each do |item|
			total += item
		end
		return total
    else return 0
	end
end

def max_2_sum(array)
	max1 = 0
	max2 = 0 
	total = 0
	if array.length > 1
		max1 = array.sort[-1]
		max2 = array.sort[-2]
		total = max1 + max2 
		return total
		else if array.length == 1
			return array[0]
			else
				return 0
		end 
	end
end

def sum_to_n? (arr, n)
  
 return arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
	"Hello, #{name}"
end

def starts_with_consonant? (s)

  return /^[b-df-hj-np-tv-z]/i.match(s) != nil
  
end

def binary_multiple_of_4? (s)
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock 
    
    attr_accessor :isbn
	attr_accessor :price
    
	def initialize(isbn,price)
		@isbn=isbn
		@price=price
		
		# if number and price is empty raise argument

		if @isbn.empty? || @price <= 0 
			raise ArgumentError
		end
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end

end
