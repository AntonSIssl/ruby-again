=begin
def dbl_linear(n)
  i = 0
  arr = [1]
  while n*2 >= arr.size
    arr << (2*arr[i]+1)
    arr << (3*arr[i]+1)
    arr = arr.sort.uniq
    i += 1

  end  
  print arr
  return arr[n]
end
=end


def dbl_linear(n)
  arr = [1]
  (0..n*2).each {|index|
    arr << (2*arr[index]+1)
    arr << (3*arr[index]+1)
    arr = arr.sort.uniq
  } 
  print arr
  return arr[n]
end

dbl_linear(10000)