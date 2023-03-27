#پروژه یک برنامه محاسبه مالیات: در این پروژه شما می‌توانید یک برنامه را بنویسید که از کاربر اطلاعاتی راجع به درآمدش را بگیرد 
# و سپس مقدار مالیات را محاسبه کند. این برنامه باید شامل یک تابع باشد که مقدار درآمد را ورودی بگیرد و مقدار مالیات را برگرداند

print "Enter the your income:"
user_income = gets.chomp.to_i

def tax_calculation(incom)
	
	final_incom = (incom * 9) / 100
	
	
	return final_incom
	
end

tax = tax_calculation(user_income)
remind = user_income - tax

 puts "tax : #{tax} $\n remind : #{remind }$"