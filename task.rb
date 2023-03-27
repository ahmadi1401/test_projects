#برنامه مدیریت تسک: یک برنامه بنویسید که به کاربر امکان مدیریت تسک‌های خود را بدهد.
# کاربر باید بتواند تسک‌های خود را اضافه، ویرایش، حذف و نمایش دهد.


class Task
	
	def task(id,name,family,job)
		@id = id
		@name = name 
		@family = family
		@job = job
		@tasks = []
	end
	def add_task(task,complete,date)
		details = {}
		details[:task] = task
		details[:complete] = complete
		details[:date] = date
		@tasks.push(details)
	end
	def edit_task(task,complete,date)
		edit = {}
		edit[:task] = task
		edit[:complete] = complete
		edit[:date] = date
	
		ind = @tasks.find_index{|i| i[:task] == task}
		@tasks[ind] = edit
		
	end
	def remove_task(task)
		@tasks.delete_if{|i| i[:task] == task }
	end
	def show_task
		puts "id : #{@id} and name : #{@name} and family : #{@family} with job : #{@job}"
		@tasks.each do |task|
			puts "task : #{task[:task]} , is complete : #{task[:complete]} , date:#{task[:date]}"
		end
	end
	
end	
	person1 = Task.new
	person1.task(1,'ali','abdi','Web design')
	person1.add_task('header design','complete','2/3/2023')
	person1.add_task('footer design','incomplete','5/3/2023')
	person1.add_task('Java Script','complete','10/3/2023')
	
	person1.edit_task('footer design','complete','20/3/2023')
	
	person1.remove_task('Java Script')
	person1.show_task
	
		