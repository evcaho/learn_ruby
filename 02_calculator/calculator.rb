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

