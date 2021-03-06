#Project Euler Problem 2
#Michael Parks <tk@tkware.info>

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

####
#Generate a fibbonaci sequence starting at min and no greater than max
def fib_a(min,max)
	ary = [min]
	while ary.last <= max
	    ary.last(2).reduce(:+) > max ? break : ary.push(ary.last(2).reduce(:+))
	end
	return ary
end

def sum_evens(ary)
	res = 0
	ary.each { |v| res = res + v if v % 2 == 0 }
	return res
end

puts sum_evens(fib_a(1, 500000000000000))