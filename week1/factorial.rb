# Using the language of your choice, code recursive versus iterative versions of Factorial.
# Mathematical definition of factorial:
# n! = 1                (when n==0)
#    = n * (n-1)!       (otherwise)

# Iterative

def ifact(n)
	if n == 0
		1
	else
		(2 .. n - 1).each { |i| n *= i }
		n
	end	
end

puts ifact(10)

# Recursive
# Beware of recursion with large n, the recursion can overflow the call stack and raise a SystemStackError. So factorial_recursive(10000) might fail.

def rfact(n)
	if n == 0
		1
	else
		n * rfact(n-1)
	end
end

puts rfact(10)
