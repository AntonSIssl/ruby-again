def pow(value,power)
	temp = 1
	for i in (1..power)
		temp*=value
	end
	return temp
end
=begin
task 1:
	puts "Ruby version: "+RUBY_VERSION
	puts "Ruby Patch Level: "+RUBY_PATCHLEVEL.to_s

task 2:
	require 'date'
	current_time = DateTime.now
	cdt = current_time.strftime "%d/%m/%Y %H:%M"
	puts "\nCurrent Date and Time: "+cdt

task 3:
	for i in (1..6)
		for k in (1..i)
			print "a"
		end
		print "\n"
	end
#or 
	def mult_str(str,n)
		str*n
	end
	for k in (1..6)
		print mult_str("a",k),"\n"
	end

task 4		
	print "Input radius of the circle: "
	def circle_area(r)
		3.14*r*r
	end
	area = circle_area(gets.to_f)
	puts "The area of circle is #{area}"

task 5
	def start_if(str)
   		return str[0, 2] == "if";
	end
	str = "ifelse"
	print start_if("ifelse"),"\n"
	print start_if("if a"),"\n"

task 6
	print "Input your first name: "
	first_name = "Anton"
	print "Input your last name: "
	last_name = "Sikorski"
	user_name = last_name+" "+first_name
	puts "Hello "+user_name

task 7
	file = "/test.rb"
	fbname = File.basename file
	puts "File name: "+fbname
	bname = File.basename file,".rb"
	puts "Base name: "+bname 
	# file extention
	ffextn = File.extname  file   
	puts "Extention: "+ffextn 
	# path name
	path_name= File.dirname  file 
	puts "Path name: "+path_name

task 8
	def inarr(var,frst_brdr,scnd_brdr)
		return (var>frst_brdr && var<scnd_brdr)
	end
	puts inarr(70,8,15)

task 9
	a,b,c =155,15,0
	def inarr(var,var1,var2)
		return (var>1 && var<10)||(var1>1 && var1<10)||(var2>1 && var2<10)
	end
	puts inarr(a,b,c)

task 10
	a,b,c =155,15,0
	def inarr(var,var1,var2)
		return (((a >= 1 && a <= 10) && !(b >= 1 && b <= 10)) || (!(a >= 1 && a <= 10) && (b >= 1 && b <= 10)))
	end
	puts inarr(a,b,c)

task 11
	puts(
	<<-eos
	Sample string :
	a string that you "don't" have to escape
	This
	is a ....... multi-line
	heredoc string --------> example
	eos
	)

task 12
	def start_if(str)
   		return str[0, 2] == "if";
	end
	str = "f else"
	if !start_if(str)
		str="if"+str
	end
	puts str

task 13
	str = "ace"
	if (str.size<3) 
		a = ""
		for i in (1..3)
			a+=str
		end	
		str=a
	end
	puts str
#or
	def mult_str(str,n)
		str.size < 3 ? str*n : str[0..2]*n
	end
	print mult_str("ac",5)+"\n"
	print mult_str("acesd",5)+"\n"
	print mult_str("a",5)+"\n"
	print mult_str("acedf",5)

task 14
	def sphere_volume(rad)
		4*3.141592*pow(rad,3)
	end
	puts "The volume of the sphere is : #{sphere_volume(5)}"

task 15
	str = "rtyu"
	str[0],str[-1]=str[-1],str[0]
	puts str
#or
	def front_back(txt)
    	txt[-1] << txt[1...-1] << txt[0]
	end

task 16
	print "Input your age: "
	age = gets.to_i
	puts "You are a minor" unless age >= 18

task 17
	def dif(value,nmb)
		temp=nmb-value
		if (temp>nmb)
			return temp*=2
		else 
			return temp
		end
	end
	puts dif(44,33)
#or
	def diff_33(n)
    	n > 33 ? ((n-33)*2).abs : (n-33).abs
	end

task 18
 	def max(a,b)
 	 	a > b ? a : b
 	end 
 	puts max(2,5)
 #or
 	x=6
	y=8
	max = x>y ? x:y
	puts "Max = "+max.to_s

task 19
	def ex19(a,b)
		if (a>20 || b >20)
			return true
		else 
			return a+b
		end
	end
	puts ex19(15,2)

task 20
	x,y,z = 2,5,4
	if x >= y and x >= z
    	puts "x = #{x} is greatest."
	elsif y >= z and y >= x 
    	puts "y = #{y} is greatest."
	else 
    	puts "z = #{z} is greatest."
	end

task 21
	def near_hundred(n)
	    (n-100).abs <= 10 || (n-200).abs <= 10
	end

task 22
	a,b = 4,4
	sum = a==b ? (a+b)*2 : (a+b)
	puts sum

task 23	
	9.times {puts "Ruby Exercises"}

task 24
	str="java"
	str=str[-1]+str+str[-1]
	puts str
#or
	def temp(str)
    	len = str.length() - 1;
		return (str.split('')[len] + str + str.split('')[len]);
	end
	puts str

task 25	
	def temp_check(a,b)
		(a<0 && b>100) || (a>100 && b<100)
	end	
	puts temp_check(-5,99)

task 26
	for i in (34..41)
		puts i
	end
#or
	34.upto 42 do |x|
		puts "#{x}"
	end	

task 27
	for i in (1..10)
		puts i if i%2==0
	end
#or
	2.step 10, 2 do |x|
    	puts "#{x}"
	end	

task 28
	9.step 1, -2 do |x|
    	puts "#{x}"
	end	

task 29
	#Write a Ruby program to print the elements of a given array.
	array1 = ["Ruby", 2.3, Time.now]
	for array_element in array1
    	      puts array_element
	end

task 30
	def cmpr30(a,b)
		a%10 == b%10
	end

task 31
	student_marks = Hash.new 0
	student_marks = {'Literature' => 74,'Science' => 89,'Math' => 91}
	total_marks = 0
	student_marks['Physics'] = 62
	student_marks.each {|key,value|
              total_marks +=value
              puts "#{key} = #{value}"
    	    } 
	puts "Total Marks: "+total_marks.to_s

task 32
	puts '*'*20
	puts '#'*20
	puts '@'*20

task 33
	year = [2012, 1500, 1600, 2020]
	year.each do |y|
		if y % 400 == 0
  			puts y.to_s + ' is leap year'
	    elsif y % 4==0 && y % 100 != 0 
    		puts y.to_s + ' is leap year'
		else  puts y.to_s + ' is not leap year'
  		end
	end

task 34
	def text_test(str)
   		if(str[1,4] == "Java")
			return (str[5, str.length()]);
		else
			return str;
		end
	end
	print text_test("ZJavaScript"),"\n"
	print text_test("Oldjava")

task 35
	def text_test(str)
    	len = str.length();
    	temp = "";
		if(len >= 1)
 		    if(str.slice(0) == 'p')
				temp += str.slice(0);
				if(len >= 2)
					if(str.slice(1) == 's')
					temp += str.slice(1);
				    end	
	    		end
	    	end
		end 
    	return temp;
	end
	print text_test("psabcd"),"\n"
	print text_test("abcd")
	print text_test("psabcd"),"\n"

#task 36
	def check36(a,b)
		if (a-10).abs > (b-10).abs
			puts "#{b}" 
		elsif a = b
			puts "#{0}"
		else 
			puts "#{a}"
		end	
	end
	check36(9,9)	

task 37	
	def check37(a,b)
		(a>=10 && a<=20) && (b>=10 && b<=20) || (a>=20 && a<=30) && (b>=20 && b<=30)
	end	
	puts check37(11,21)

task 38
	def check38(a,b)
		if (a>=20 && a<=30) && (b>=20 && b<=30)
			if a > b
				return a
			else 
				return b
			end	
		else if (b>=20 && b<=30) 
			return b;
		else if (a>=20 && a<=30)
			return a;
		else 
			return 0
		end	
	end	
#or 
	def test_int(a, b)
	  	if(a >= 20 && a <= 30)
			if(b >= 20 && b <= 30 && b >= a)
					return b
				else
					return a
				end	
			else if(b >= 20 && b <= 30)
				return b
			else
				return 0
			end
  		end
	end

task 39
	def cont_i(str)
		a = false
		for i in 0..str.size do 
			if (str[i] == 'i')
				a = true
			end	
		end
		return a
	end	
#or 
	def test_str(str)
	    count = 0
    	for  i in  0..str.length do
    		if(str.slice(i) == 'i')
       			count = count + 1
			end
	  	end
		return (count >= 1 && count <= 3);
	end

task 40
	def string_test(str)
    	str1 = ""
	    str.split("").each_with_index do |char, index|
    	    str1 += char unless index % 2 == 1     
    	end
    	return str1
	end

task 41
	def array41(array)
		count = 0
		array.each{|item| count+=1 unless item !=5}
		return count
	end
	puts array41([1,2,5,9,5])

task 42
	def array_count(array)
    	ctr = 0
    	array.each{|item| ctr += 1 unless item != 7}
	    return ctr
	end

task 43
	def array102030(nums)
	    idx = 0
    	while idx < nums.length-2
        	if nums[idx..idx+2] == [10,20,30]
            	return true
        	end
    	    idx += 1
	    end
    	return false
	end
=end
#task 44














