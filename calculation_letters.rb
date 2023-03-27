#برنامه‌ای بنویسید که یک رشته دریافت کند و تعداد حروف کوچک، بزرگ و اعداد در آن را محاسبه کند.


Lowercase_letters = []
uppercase_letters = []
numbers = []

print"Enter the letters :"
user_letters = gets.chomp

if user_letters == ''
	puts"The input is invalid"
else
	array_letter = user_letters.split('')
	
	array_letter.each do |letter|
		Lowercase_letters.push(letter) if ('a'..'z').include?(letter)
		uppercase_letters.push(letter) if ('A'..'Z').include?(letter)
		numbers.push(letter) if (1..9).include?(letter.to_i )
	end
	
	puts "the lowercase letter = #{Lowercase_letters.length}"
	puts "the uppercase letter = #{uppercase_letters.length}"
	puts "the numbers  = #{numbers.length}"

end

