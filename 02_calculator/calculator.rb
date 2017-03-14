#write your code here
def add (param1, param2)
	param1 + param2
end

def subtract(param1, param2)
	param1 - param2
end

def sum(params)
	total = 0
	params.inject(0, &:+)
end

def multi(params)
	total = 1
	params.each do |num|
		total = num * total
	end
	total
end

def power(num1, num2)
	total = num1
	final = (num2 - 1)
	final.times do 
		total = (num1 * total)
	end
	total
end

