#برنامه‌ای بنویسید که اعداد فیبوناچی را چاپ کند. به عنوان ورودی، از کاربر بخواهید که چند عدد فیبوناچی را می‌خواهد

print"Enter the number of Fibonacci numbers:"

numbers = gets.chomp.to_i

if numbers >= 2
	puts "The value must be greater than own"
else 
	fibonacci = [0,1]
	
	i = 0 
	
	while  i < numbers - 2
		fibo = 0
		
		fibo = fibonacci[fibonacci.length - 2] + fibonacci[fibonacci.length - 1]
		fibonacci.push(fibo)
		
		i += 1
		
	end
	
	fibonacci.each{|i| print " " + i.to_s}
	
		
	
end