#رنامه‌ای بنویسید که یک لیست از اعداد را دریافت کند و بزرگترین عدد آن‌ها را پیدا کند


user_array = []
user_numbers = 0

while user_numbers
	print "Enter the number:\n for exit enter (X):"
	user_numbers = gets.chomp
	break if (user_numbers == '' || user_numbers == 'X')
	(user_array).push(user_numbers.to_i)
end

if user_array.length > 0
	puts user_array.max
end
	