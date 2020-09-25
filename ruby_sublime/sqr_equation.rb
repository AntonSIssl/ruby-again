#ax^2+bx+c=0
def sqreq(a,b,c)
	d = b*b-4*a*c
	if d > 0
		x1 = (-b+Math.sqrt(d))/(2*a) 
		x2 = (-b-Math.sqrt(d))/(2*a)
	end	
	if d < 0
		x1 = (-b+Math.sqrt(-d))/(2*a)
		x2 = (-b-Math.sqrt(-d))/(2*a)
	end
	if d == 0
		x1 = -b/(2*a)
		x2 = x1
	end	
	return [x1,x2]
end	
	
 
class Sqequation
	def initialize(a,b,c)
		@a = a
		@b = b
		@c = c	
	end	
	def root
		d = @b*@b-4*@a*@c
		if d > 0
			x1 = (-@b+Math.sqrt(d))/(2*@a) 
			x2 = (-@b-Math.sqrt(d))/(2*@a)
		end	
		if d < 0
			x1 = (-@b+Math.sqrt(-d))/(2*@a)
			x2 = (-@b-Math.sqrt(-d))/(2*@a)
		end
		if d == 0
			x1 = -@b/(2*@a)
			x2 = x1
		end	
		puts "x1 = #{x1}; x2 = #{x2}."
	end
end	
 	f = Sqequation.new(1,-4,4)
 	f.roots



