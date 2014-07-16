puts "Give me a number"
number_one = gets.to_i

def always_three(number_one)
	puts "The answer is always " + (((((number_one + 5) * 2) - 4) / 2) - number_one).to_s
end

always_three(number_one)