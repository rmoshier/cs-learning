# Code problem: Using the language of your choice, code recursive versus iterative versions of Fibonacci

# Iterative

def ifib(n, a=[1])
	(n-1).times do
		# Seems like this should work with just n, not n-1.
		# Not sure why only works with n-1.
		current, last = a.last(2)
		a << current + (last or 0)
	end
	a.last
end

puts ifib(10)

# Recursive

puts "---"

def rfib(n)
	if n < 2
		return n
	else
		rfib(n-1) + rfib(n-2)
	end
end

puts rfib(10)
