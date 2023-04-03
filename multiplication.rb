#تبدیل یک عدد به حاصلضرب آن عدد و اعداد تکرار را به توان تبدیل می کند.

print"Enter your number : "
user_number = gets.chomp.to_i

def convert_to_multipl(num)
	arr = []
	i = 2
	search_index = nil
	new_arr = []
	while i <= num  
		if num % i == 0
			search_index = arr.find_index{|j|  j[0] == i }
			if search_index 
				arr[search_index][1] += 1
			else
				new_arr = []
				new_arr[0] = i
				new_arr[1] = 1
				arr.push(new_arr)
				
			end
			num /= i
			i = 1
		end
		i += 1
	end
	str = ""
	arr.each_with_index do |txt,index|
		if index < arr.length - 1
			if txt[1] > 1
				str = str + "#{txt[0]} ^ #{txt[1]} * "
			else
				str = str + "#{txt[0]} * "
			end
		else
			if txt[1] > 1
				str = str + "#{txt[0]} ^ #{txt[1]}"
			else
				str = str + "#{txt[0]}"
			end
		end
	end
	return str		
end			
puts convert_to_multipl(user_number)
