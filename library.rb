#پروژه یک برنامه کتابخانه: در این پروژه، شما می‌توانید یک برنامه بنویسید که اجازه دهد کتاب‌ها و نویسندگان را در یک کتابخانه ثبت کنید. این برنامه باید شامل یک تابع باشد که اطلاعات کتاب‌ها و نویسندگان را ورودی بگیرد و آن‌ها را در کتابخانه ذخیره

print "enter books name:"
book = gets.chomp

print "enter auther:"
auther = gets.chomp

$library = []

def submit(book,auther)
	
	to_abject = {}
	
	to_abject[book] = book
	to_abject[auther] = auther 
	
	$library.push(to_abject)
	
	print $library 
end

submit(book,auther)