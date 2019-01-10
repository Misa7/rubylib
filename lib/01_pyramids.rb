 def half_pyramid
 	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25)"
 	print "> "

 	nb_etage = gets.chomp.to_i
 	if (nb_etage > 0) && (nb_etage < 26) 
 		nb_etage.times do |var|
 			puts " "*(nb_etage-(var+1))+"#"*(var+1)
 		end
 	else
 		puts "Le nombre d'étages doit être compris entre 1 et 25."
  	end
end

 half_pyramid


def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25)"
	print "> "
	nb_etage = gets.chomp.to_i
	if (nb_etage > 0) && (nb_etage < 26) 
		nb_etage.times do |var|
			 puts " "*(nb_etage-(var+1))+"#"*(var+1) + "#"*(var + 0)
		end
	else
		puts "Le nombre d'étages doit être compris entre 1 et 25."
	end
end

full_pyramid



def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25)"
	print "> "
	nb_etage = gets.chomp.to_i
	if (nb_etage > 0) && (nb_etage < 26) 
		((nb_etage +1)/ 2).times do |var|
			puts " "*(nb_etage-(var+1))+"#"*(var+1) + "#"*(var) # Gère les espaces plus l'incrémentation du haut
		end
	 	(nb_etage-((nb_etage +1)/ 2)).times do |var|

			puts " "*(var+(nb_etage +1)/ 2)+ "#"*( nb_etage - 2 *(var+1))# Gère les espaces plus l'incrémentation du bas
		end
	else
		puts "Le nombre d'étages doit être compris entre 1 et 25."
	end

end

wtf_pyramid

