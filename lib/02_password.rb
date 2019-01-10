def signup
	puts "Choose a password"
	print ">"
	password = gets.chomp
end

def welcome_screen
	puts "Chocolatine > Pain au chocolat"
end

def login(password)
	puts "Enter your password"
	print ">"
	pw = gets.chomp
	while pw != password do
		puts "Wrong password, try again"
		print ">"
		pw = gets.chomp
	end 
		puts welcome_screen
end

def perform
	password = signup
	login(password)
end
perform