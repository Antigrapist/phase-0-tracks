class Hangman
	attr_accessor :puzzle_word
	attr_accessor :guesses_remaining
	attr_accessor :word_in_progress
	attr_accessor :is_game_over
	attr_accessor :letters_guessed

	def initialize
		@puzzle_word = ""
		@guesses_remaining = 0
		@is_game_over = false
	end



	def submit_puzzle_word(word)
		@puzzle_word = word.downcase.split ""
		@word_in_progress = []
		@letters_guessed = []
		@puzzle_word.length.times do 
			@word_in_progress << "_"	
		end
		@guesses_remaining = @puzzle_word.length + 5
	end

	def submit_guess(letter)
		if letter.length > 1
			return "One letter at a time please"
		elsif @letters_guessed.include? (letter) 
			return "You already guessed this letter, please guess a new one"
		else
			 @letters_guessed << letter
			 @guesses_remaining -= 1
			 if @puzzle_word.include? letter
			 	counter = 0
			 	while counter < @puzzle_word.length
			 		if @puzzle_word[counter] == letter
			 			@word_in_progress[counter] = letter
			 		end	
			 		counter +=1
			 	end
			 	return "Correct!"
			 else
				return "Sorry, that was incorrect"
			 end
		end

	end

	def check_if_game_over
		if @word_in_progress.include? ("_") 
			if @guesses_remaining > 0
				@is_game_over = false
			else @is_game_over = "You have lost :("

			end
		else
			@is_game_over = "You have won! Huzzah!"
		end
		return @is_game_over
	end

end




# driver code

puts "Please submit the word you want Player 2 to guess"
game = Hangman.new

game.submit_puzzle_word(gets.chomp.downcase) 
puts "Now it's time for player 2 to guess!"
p game.word_in_progress 

until game.is_game_over
	puts ""
	puts ""
	puts "You have #{game.guesses_remaining} guesses remaining"
	puts "Please submit a letter"
	puts game.submit_guess(gets.chomp.downcase)
	p game.word_in_progress
	game.check_if_game_over
end

puts game.is_game_over