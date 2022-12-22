# PART 1
def sum(arr)
	sum=0
	if arr.length > 0
		arr.each do (d)
			sum+=d
		end
		return sum
    else return 0
	end
end

def max_2_sum(arr)
	max1 = 0
	max2 = 0 
	sum = 0
	if arr.length > 1
		max1 =arr.sort[-1]
		max2 = arr.sort[-2]
		sum = max1 + max2 
		return sum
        else if arr.length == 1
			return arr 
			else
				return 0
		end 
	end
end



def sum_to_n?(arr,n)
	result = false
	if arr.length  > 1
		for i in 1..arr.length  - 1
			for j in 0..i - 1
				if arr[j] + arr[i] == n
					result = true
					break
				end
			end
		end
	end
	return result
end

# PART 2

def hello(name)
	puts "hello #{name}"
end

 
def starts_with_consonant?(s) 
    if  /^[^aeiou\W]/i.match(s) == nil
        return true
    else
        return false 
    end
end

#puts starts_with_consonant?('shello')


def binary_multiple_of_4?(s)
    if  /^[01]*(00)$/.match(s)
         return true
    else
        return false
    end
end


# PART 3
class BookInStock 
	def initialize(isbn,price)
        raise ArgumentError@isbn.empty? || @price <= 0 
        self.isbn=isbn
        self.price=price
		
	end
	def price_as_string
		"$#{'%.2f' %  @price}"
	end

end