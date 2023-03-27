#برنامه‌ای بنویسید که یک لیست از اعداد را دریافت کرده و لیستی جدید از اعداد فرد آن‌ها را تولید کند.

num = 0
numbers = []
while num 
	print "Enter the number_ perss 'E' for exit"
	user_number = gets.chomp
	break if user_number == 'E'
	numbers.push(user_number.to_i)
end

if numbers.length > 0
	odd_number = numbers.filter{|number| number % 2 == 1}
	odd_number.each{|i| print " " + i.to_s}
end