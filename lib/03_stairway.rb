#!/usr/bin/env ruby

# Affichage d'une ligne de la pyramide
def print_row(offset_length, row_length, position, symbol)
	for i in 0..row_length do
		if i > offset_length then
			print "#"
		elsif i==position then
			print symbol	
		else
			print " "
		end
	end
	puts
end


# Affichage de la pyramide du score
def show_pyramid(pyramid_height, position)
	
	row_length = pyramid_height
	offset = pyramid_height-1

	puts
	print_row(row_length, row_length, position, "#{position}")
	print_row(row_length, row_length, position, "|")

	for i in 1..pyramid_height do
		print_row(offset, row_length, position, "|")
		offset-=1
	end
end


# Lancer de dé et calcul de la nouvelle position
def roll_dice(position)
	print "Lancer de dé"
	3.times do
		print "."
		sleep 0.5
	end
	puts

	numero = rand(1..6)
	puts
	puts "Tu as fait #{numero}"

	if numero == 5 || numero == 6 then
		position += 1
		puts "GG ! Tu avances d'une case. Tu es un winner (^ ᗜ ^)"
	elsif numero == 1 then
		if position > 0 then
			position -= 1
			puts "T'es nul ! Tu recules d'une case ! T'es mauvais Jack !"
		else
			puts "Tu es déjà au plus bas, inutile de creuser davantage ;)"
		end
	else
		puts "Désolé tu ne bouges pas."
	end

	return position
end


# Afficher la position à la fin d'un tour
def show_position(position)
	puts "Tu es maintenant sur la case #{position}"
	show_pyramid(10, position)

	puts
	if position < 10 then
		puts "Pour continuer, appuyer sur Entrée..."
		gets
	else
		puts "Félicitations !!! TU AS GAGNÉ ! TU ES UN GÉNIE"
		puts "Les Loutres Cosmiques sont fières de toi <3"
		puts
	end
end


# Lancement du jeu
def perform()
	position = 0

	while position < 10 do

		system("clear")

		position = roll_dice(position)
		
		puts
		show_position(position)
	end
end


perform