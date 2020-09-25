def dbl_linear(n)
    i = 0
    arr = [1]
    while n*2 >= arr.size
      arr << (2*arr[i]+1)
      arr << (3*arr[i]+1)
      arr = arr.sort.uniq
      i += 1
    end 
    puts arr[n] 
    print arr  
    return arr[n]
  end
  #как оптимизровать?
  dbl_linear(50)
  