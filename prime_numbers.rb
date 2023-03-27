#برنامه‌ای بنویسید که از کاربر یک عدد دریافت کرده و بررسی کند که آیا آن عدد اول است یا خی

def first_number
	print"Enter the number => "
	user_input = gets.chomp 
	
	if  is_valid?(user_input)
		to_integger = user_input.to_i 
		
		final = (to_integger%3 == 0 || to_integger%2 == 0 )? "#{to_integger} is not first number" : "#{to_integger} is first number"
		
		print final
	
	end
	  
end

def is_valid?(num)
	isNaN = ('a'..'z').any?{|n| n == num} || ('A'..'Z').any?{|n| n == num}
	is_valid = !(isNaN || num == ' ' || num == '')
	return is_valid
end

first_number