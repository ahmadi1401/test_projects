#که تعداد شماره‌های تولید شده را ورودی بگیرد و مجموعه‌ای از شماره‌های تلفن تولید کند
#بنویسید که شماره تلفن تصادفی را تولید کند. این برنامه باید شامل یک تابع باشد
#پروژه یک برنامه تولید شماره تلفن‌: شما می‌توانید یک برنامه را  .

print"Enter the 8 number"
user_numbers = gets.chomp

def create_random_number(numbers)
	
	array_number = numbers.split('')
	
	sort_number_min = (array_number.sort{|v1,v2| v1 <=> v2})
	sort_number_max = array_number.sort{|v1,v2| v2 <=> v1}
	
	sort_number_min = (sort_number_min.join('')).to_i
	sort_number_max = (sort_number_max.join('')).to_i
	
	count = 0
	tell_number = nil
	
	while count < 20
		random_number = rand(sort_number_min..sort_number_max)
		
		 tell =  random_number.to_s
		 
		puts "091#{tell[0]} #{tell[1]}#{tell[2]}#{tell[3]} #{tell[4]}#{tell[5]}#{tell[6]}#{tell[7]}"
		
		count += 1
	end
		
end
if user_numbers.length == 8

	create_random_number(user_numbers)
	
end