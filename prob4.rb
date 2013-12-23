#Find the largest palindrome made from product of two 3-digit numbers
#Approach is to step down from largest possible product to smallest
#take the first palindrome found. 

#Factors that sum to a number will always have product greater than
#factors that sum to any smaller number -- so factors that sum to 1998
#will always have product greater than any factors that sum to 1997
#so we check all factors summing to 1998 first, then step down to 1997
#and so on.  

#Within a certain sum, the largest product will come from the two 
#factors with the smallest difference between them, so we start at that
#one and increment one factor while decrementing the other till
#the incremented factor == 999, at that point, we've tried all combos
#and can move to the next sum group.

require "benchmark"

def bigPalProd
	subtract = 1
	while subtract < 1800
		subtract += 1
		num1 = 1000 - subtract/2
		num2 = 1000 - (subtract - subtract/2)
		while num1 < 999
			prod = num1 * num2
			str = prod.to_s
			if str == str.reverse
				return prod
			end
			num1 += 1
			num2 -= 1
		end
	end
end


time = Benchmark.measure do
	puts bigPalProd
end

puts time











