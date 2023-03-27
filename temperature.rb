# تبدیل درجات دمایی به یکدیگر

print"1.Enter 1 to convert Celsius to Fahrenheit\n2.Enter 2 to convert Celsius to Kelvin\n
3.Enter 3 to convert Fahrenheit to Celsius\n4.Enter 4 to convert Kelvin to Celsius "
Select_unit = gets.chomp.to_i

def cel_to_far(deg)
	puts"Enter the degree into Celsius : "
	celsius = gets.chomp.to_f
	
	fahrenheit = (celsius * 9/5) + 32
	
	show(fahrenheit,'F')
	
end

def cel_to_kel(deg)
	puts"Enter the degree into Celsius : "
	celsius = gets.chomp.to_f
	
	kelvin = celsius + 273.15

	show(kelvin,'K')	
end

def far_to_cel(deg)
	puts"Enter the degree into Fahrenheit : "
	fahrenheit = gets.chomp.to_f
	
	celsius = ((fahrenheit - 32) *5 ) / 9

	show(celsius,'C')
end

def kel_to_cel(deg)
	puts"Enter the degree into Kelvin : "
	kelvin = gets.chomp.to_f
	
	celsius = kelvin - 273.15

	show(celsius,'C')
end

def show(deg,unit)

	puts "#{deg} #{unit}"
	
end	

puts "The input is not valid!" if !([1,2,3,4].include?(Select_unit))

cel_to_far(Select_unit) if Select_unit == 1
cel_to_kel(Select_unit) if Select_unit == 2
far_to_cel(Select_unit) if Select_unit == 3
kel_to_cel(Select_unit) if Select_unit == 4

