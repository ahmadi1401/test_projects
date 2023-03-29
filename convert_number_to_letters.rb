#تبدیل اعداد زیر هزار و بالای صفر به حروف

$numbers_to_letters = [{"0"=>"صفر"},{"1"=>"یک"},{"2"=>"دو"},{"3"=>"سه"},{"4"=>"چهار"},{"5"=>"پنج"},{"6"=>"شش"},{"7"=>"هفت"},{"8"=>"هشت"},{"9"=>"نه"},{"10"=>"ده"},

{"11"=>"یازده"},{"12"=>"دوازده"},{"13"=>"سیزده"},{"14"=>"چهارده"},{"15"=>"پانزده"},{"16"=>"شانزده"},{"17"=>"هفده"},{"18"=>"هجده"},{"19"=>"نوزده"},

{"20"=>"بیست"},{"30"=>"سی"},{"40"=>"چهل"},{"50"=>"پنجاه"},{"60"=>"شصت"},{"70"=>"هفتاد"},{"80"=>"هشتاد"},{"90"=>"نود"},

{"100"=>"یکصد"},{"200"=>"دویست"},{"300"=>"سیصد"},{"400"=>"چهارصد"},{"500"=>"پانصد"},{"600"=>"ششصد"},{"700"=>"هفتصد"},{"800"=>"هشتصد"},{"900"=>"نهصد"},{"1000"=>"هزار"}
]


print"Enter the number : "
user_number = gets.chomp

def find_number(num)

	letter =  $numbers_to_letters.find{|elem| elem[num]}
	
	return letter[num]
	
end

def one(num)
	
	return find_number(num) if num.to_i < 10
	
end

def two(num)

	dahgan = num[0] + '0'
	
	yekan = num[1]
	
	if (num.to_i <=  20)
	
		return find_number(num)
		
	else
	
		 if yekan == '0'
		 
			return find_number(dahgan)
			
		else
			
			return find_number(dahgan) + ' و '  + find_number(yekan)
			
		end
		
	end
		
end

def three(num)

	sadgan = num[0] + '00'
	
	dah = num[1] + num[2]
	
	dah2 = num[1]
	
	yek = num[2]
	
	if dah == '00'
	
		return find_number(sadgan)
		
	elsif dah2 == '0'
	
		return  find_number(sadgan) + ' و ' + one(yek)
		
	else
	
		return  find_number(sadgan) + ' و ' + two(dah)
		
	end

end

def four(num)

	if num == '1000'
	
		return find_number(num)
		
	end
	
end


if (1..1000).include?(user_number.to_i)

	if user_number.length == 1
	
	   puts one(user_number)
	   
	elsif user_number.length == 2
	
		puts two(user_number)
		
	elsif user_number.length == 3
	
		puts three(user_number)
		
	elsif user_number.length == 4
	
		puts four(user_number)
		
	end
else

	puts"The input is not valid"

end




 
