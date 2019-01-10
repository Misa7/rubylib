# Définition du nom par l'user
def ask_first_name
	puts "C'est quoi ton p'tit nom ?"
	print "> "
	first_name = gets.chomp
	return first_name
end

# Le programme répond bonjour à l'user
def say_hello(first_name)
	puts "Bonjour, #{first_name} !"
end

# Combinaison de la définition du nom & de la réponse du programme
def perform
	first_name = ask_first_name
	say_hello(first_name)
end
perform