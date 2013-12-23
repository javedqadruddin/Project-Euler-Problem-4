#Find the largest palindrom made from product of two 3-digit numbers
#str.reverse

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


#beginTime = Time.now
time = Benchmark.measure do
	puts bigPalProd
end

puts time
#endTime = Time.now

#puts "Program finished in #{(endTime - beginTime)*1000} milliseconds"









