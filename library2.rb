#پروژه یک برنامه کتابخانه: در این پروژه، شما می‌توانید یک برنامه بنویسید که اجازه دهد کتاب‌ها و نویسندگان را در یک کتابخانه ثبت کنید. این برنامه باید شامل یک تابع باشد که اطلاعات کتاب‌ها و نویسندگان را ورودی بگیرد و آن‌ها را در کتابخانه ذخیره

class Library
	def library(id,book,auther)
		@id = id
		@book = book
		@auther = auther
		@bookes = {}
	end
	def add_book
		@bookes[:id] = @id
		@bookes[:book] = @book
		@bookes[:auther] = @auther
	end
	
	def show_book
		print"Books name : #{@bookes[:book]}\nBookes auther : #{@bookes[:auther]}"
	end

end
 
	book1 = Library.new
	book1.library(1234,'Golestan','Saadi')
	book1.add_book
	book1.show_book
		
		
		
		
		
		