


def lance
				@dice_face = rand(1..6)
	 			puts "ton dès affiche #{@dice_face}"
end


def question
	puts "Appuye sur L pour relancer le dès"
			print "> "
			user_answer = gets.chomp.to_s

				while user_answer != "L"
					puts "Appuye sur L pour relancer le dès"
					print "> "
					user_answer = gets.chomp.to_s
				end

end


def stairs
	y = 11 - @position
	x = 10
	n = 1
	while n <= 10
   			if (n == y)
       			puts ">>>" + ("# " * n).rjust(20)
   			else
       			puts " |" + ("# " * n).rjust(20)
   			end
   		n += 1
	end
end

		



def conditions (chiffre)
	@floor = 10
	@position = 1



			while @position != @floor

				case @dice_face

					when  (1..2)

						@position -= 1
						puts "retour à la marche #{@position}"
							if @position < 1
								puts "on recommence looser"
								@position = 2
							else
								stairs
								question
								lance
							end


					when  (3..4)

						@position == 0
						puts "tu reste à la marche #{@position}"

						stairs
						question
						lance

	 				when  (5..6)

						@position += 1
						puts "tu avances à la marche #{@position}"

						stairs
						question
						lance
					end	

			end
	
	puts " tu as gagne"
end

conditions(lance)







