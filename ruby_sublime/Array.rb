=begin
task 1
color = ["Red", "Green", "Blue", "White"]
print "Original array:\n"
print color
print "\nCheck if 'Green' in color array!\n"
print color.include? 'Green'
print "\nCheck if 'Pink' in color array!\n"
print color.include? 'Pink'

task 2
	def check_array(nums)
		return (nums[0] == 7 || nums[nums.length-1] == 7)
	end

task 3
nums = [12, 34, 23, 56]
print "Original array:\n"
print nums
print "\n 2 random elements from the array.\n"
print nums.sample(2)
print "\n 3 random elements from the array.\n"
print nums.sample(3)

task 5
	def sumarr(arr)
		sum = 0
		arr.each {|item| sum+=item}
		return sum
	end
	puts sumarr([12, 34, 23, 56])
#or
	nums = [12, 34, 23, 56]
	print nums.inject(0){|sum,x| sum + x }

task 6
	nums = [1, 2, 3, 4, 1, 2, 2, 3, 5, 6]
	new_nums = nums.uniq
	print new_nums

task 7
	def check7(arr1,arr2)
		 (arr1.size > 1 && arr2.size > 1) && ((arr1[0]==arr2[0]) || (arr1[-1]==arr2[-1]))	
	end	
	puts check7([2,22],[1,2,18])

task 8
color = ["Red", "Green", "", "Blue", "White"]
print "Original array:\n"
print color
print "\nRemove blank element from the above array:\n"
new_color = color.reject { |c| c.empty? }
print new_color 

task 9
	def Sumar(arr)
		sum = 0	
		arr.each {|item| sum += item} if arr.size >= 3
		return sum
	end	
	puts Sumar([1,3,5])
=end
#task 11
	def rotate_lft(arr)
		arr.each {|index,item| arr[index-1] = item}
		arr.each {|item| puts arr[item]}
	end	

	rotate_lft([1,3,2,2])








