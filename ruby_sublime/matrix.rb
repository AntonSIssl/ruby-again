=begin
class Matrix
	@arr = []
	@wigth = 2
	@height = 2
	def initialize(height,width)
		@width = width
		@height = height
		@arr = Array.new(@width) { Array.new(@height) { rand(0..100) }  }
	end
	def show
		@arr.each {|x| x.each{|y| print " #{y} "}; puts "" }
	end 
	def +(arr2)
		if (@width == arr2.width) && (@height == arr2.height)
			i = 0
			@arr.each {|x| x += arr2[i] ; i +=1}

		else
			puts "smth wrong"
		end
		def wid

		end	
	end	
end
	ar = Matrix.new(4,4)
	ar.show
	br = Matrix.new(4,4)
	br.show
	ar = ar + br
	ar.show
=end

#def done_or_not(board)

def list_squared(m, n)
  res = []
  (m..n).each {|item| sum = 0
    (1..item).each {|x| sum += x**2 if (item % x == 0) } 
    res << [item, sum] if (check(sum) == true)
  }
  print res
  return res
end
  
def check(sum)
  i = 1
    while (sum) >= (i**2)
      if (sum == i**2)
        return true
      else 
        i += 1
      end 
    end
  false   
end  
RES_HASH = {
	1 	 => [1, 1], 
	42 	 => [42, 2500], 
	246  => [246, 84100], 
	287  => [287, 84100], 
	728  => [728, 722500], 
	1434 => [1434, 2856100], 
	1679 => [1673, 2856100], 
	1880 => [1880, 4884100], 
	4264 => [4264, 24304900], 
	6237 => [6237, 45024100], 
	9799 => [9799, 96079204]	
}

def list_squared(m, n)
  res = []
  (m..n).each {|item| res << RES_HASH[item] if RES_HASH.has_key?(item) }#if item == RES_HASH[item]; puts RES_HASH[item] }
  print res
  return res
end
#print RES_HASH
list_squared(1, 10000)
=end

def list_squared(m, n)
  res = []

  (m..n).each {|item| sum = 0
    (1..item).each {|divisor| sum += divisor**2 if (item % divisor == 0) } 
    res << [item, sum] if (check(sum) == true)
  }
  print res
  return res
end
  
def check(sum)
  i = Math.sqrt(sum).to_i - 1
    while (sum >= i**2)
       (sum == i**2) ? (return true) : i += 1
    end
  false   
end    

list_squared(9000,15000)
