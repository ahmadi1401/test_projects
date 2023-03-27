#برنامه‌ای بنویسید که از کاربر تعدادی عدد دریافت کرده و میانگین آن‌ها را محاسبه کند


sum = 0 

while sum 
	print"Enter the number:\press 'E' for exit:"
	user_number = gets.chomp.to_i
	break if user_number == 'E'
	num += user_number
	
end

puts sum
