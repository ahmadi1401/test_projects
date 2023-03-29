#تبدیل اعداد زیر هزار و بالای صفر به حروف

$numbers_to_letters = [{"0"=>"Zero"},{"1"=>"One"},{"2"=>"Two"},{"3"=>"Three"},{"4"=>"Four"},{"5"=>"Five"},{"6"=>"Six"},{"7"=>"Seven"},{"8"=>"Eight"},{"9"=>"Nin"},{"10"=>"Ten"},

{"11"=>"Eleven"},{"12"=>"Twelve"},{"13"=>"Thirteen"},{"14"=>"Fourteen"},{"15"=>"Fifteen"},{"16"=>"Sixteen"},{"17"=>"Seventeen"},{"18"=>"Eighteen"},{"19"=>"Nineteen"},

{"20"=>"Twenty"},{"30"=>"Thirty"},{"40"=>"Forty"},{"50"=>"Fifty"},{"60"=>"Fifty"},{"70"=>"Seventy"},{"80"=>"Eighty"},{"90"=>"Ninety"},

{"100"=>"One hundred"},{"200"=>"Two hundred"},{"300"=>"Three hundred"},{"400"=>"Four hundred"},{"500"=>"Five hundred"},{"600"=>"Six hundred"},{"700"=>"Seven hundred"},{"800"=>"Eight hundred"},{"900"=>"Nine hundred"},{"1000"=>"Thousand"}
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
			
			return find_number(dahgan) + ' '  + find_number(yekan)
			
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
	
		return  find_number(sadgan) + '  ' + one(yek)
		
	else
	
		return  find_number(sadgan) + '  ' + two(dah)
		
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




 
