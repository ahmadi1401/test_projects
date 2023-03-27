#برنامه‌ای بنویسید که یک لیست از اعداد را دریافت کرده و لیستی جدید از مربع اعداد آن‌ها را تولید کند

user_numbers = []
stop_loop = 0

while stop_loop
	print "Enter your number:\n for exit enter the letter 'E' "
	user_number = gets.chomp
	break if (user_number == 'E' || user_number == '')
	user_numbers.push(user_number.to_i)
end

if user_numbers.length > 0
	
	user_numbers.map{|num| print " #{num.pow(2)} "}
	
end
	