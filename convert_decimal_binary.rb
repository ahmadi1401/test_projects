
print"Enter your number"
number = gets.chomp.to_i

def dec_to_bim(num)
	bit_array = []
	bit = nil
	remind = nil
	bit_array = [0,1,0] if num == 2
	bit_array = [1,0,1] if num == 3
	
	while num > 3
		bit = num /2
		remind = num % 2
		bit_array.push(remind)
		num = bit
		
		if bit == 2
			bit_array.insert(bit_array.length ,0,1)
			break
		elsif bit == 3
			bit_array.insert(bit_array.length,1,1)
			break
		end
	end
	(bit_array.reverse).each{|i| print " #{i} "} 
end

dec_to_bim(number)

