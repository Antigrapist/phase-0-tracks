class Hangman
	attr_accessor :puzzle_word
	attr_accessor :guesses_remaining
	attr_accessor :word_in_progress
	attr_accessor :is_game_over

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
		@guesses_remaining = @puzzle_word.length
	end

	def submit_guess(letter)
		if letter.length > 1
			return "One letter at a time please"
		elsif @letters_guessed

		else
			

		end

	end

end




#driver code
# puts "Please submit the word you want your opponent to guess"
# game = Hangman.new
# game.submit_puzzle_word("Potato") #Need to add UI that uses gets.chomp
# puts "Now it's time to guess!" 
# until @is_game_over
# 	puts "Please submit a letter"

	
# end