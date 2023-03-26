#رنامه‌ای بنویسید که از کاربر سال تولد را دریافت کرده و سن او را محاسبه کند








def get_date
	print"Enter your Date of birth : (2002/12/9)"
	date_birth = gets.chomp
	if (date_birth == '' || !date_birth.include?('/'))
		puts"Enter the date correctly!"
	else 
		array_date_birth = date_birth.split('/')
		user_year = array_date_birth[0].to_i
		user_month = array_date_birth[1].to_i
		user_day = array_date_birth[2].to_i
		
		if (user_year < 1950 || user_year > 2023  ||  user_month > 12 || user_month < 1 || user_day > 31 || user_day < 1)
			puts"Enter the date correctly!"
		else
			age_calculation(user_year,user_month,user_day)
		end
	end
end
 
 def age_calculation(age_year,age_month,age_day)
	time = Time.new 
	year = time.year  
	month = time.month  
	day = time.day
	puts"Your Age : #{year - age_year} year and #{(month - age_month).abs} month and #{(day - age_day).abs} day."
 end
 
 get_date
	
 
 