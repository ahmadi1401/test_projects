#بازی تصادفی: برنامه‌ای بنویسید که یک عدد تصادفی بین 1 و 100 تولید کندو 
#سپس کاربر باید حدس بزند که آن عدد چیست.برنامه باید نشان دهد که عدد کاربر 
# بزرگتر یا کوچکتر از عدد تصادفی است 

random_number = rand(1..100)

print"Enter your guess number:"
user_guess = gets.chomp.to_i

if random_number == user_guess

	puts "Your guess was right and you won.\n 
	#{random_number} = #{user_guess}"
	
elsif random_number > user_guess

	puts "Your guess was not correct and your number is smaller.\n
	#{random_number} > #{user_guess} "
	
else 

	puts " Your guess was not correct and your number is bigger.\n
	#{random_number} < #{user_guess}"
	
end

