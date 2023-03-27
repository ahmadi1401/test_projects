#محاسبه BMI

print"Enter your weight in kilograms : "
weight = gets.chomp.to_i

print"Enter your height in meters : "
height = gets.chomp.to_f

bmi = (weight / (height * height)).round(1)

puts"you are thin ; #{bmi}" if bmi<= 18.5
puts"you are normal ; #{bmi}" if (bmi > 18.5 && bmi <= 24.9)
puts"You are overweight ; #{bmi}" if (bmi >= 25 && bmi < 30)
puts"you are obese ; #{bmi}" if bmi >= 30