class Hangman
	attr_accessor :puzzle_word
	attr_accessor :guesses_remaining
	attr_accessor :word_in_progress
	attr_accessor :is_game_over
	attr_accessor :letters_guessed

	def initialize(puzzle_word = "", guesses_remaining = 0, is_game_over=false)
		@puzzle_word = puzzle_word
		@guesses_remaining = guesses_remaining
		@is_game_over = is_game_over
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
			 	return "Correct!"
			 else
				return "Sorry, that was incorrect"
			 end
		@puzzle_word
		end

	end

	def check_if_game_over
		if @word_in_progress.include? ("_") 
			if guesses_remaining > 0
				is_game_over = false
			else is_game_over = true
			end
		else
			is_game_over = true
		end
		return is_game_over
	end

end




#driver code
# puts "Please submit the word you want your opponent to guess"
# game = Hangman.new
# game.submit_puzzle_word("Potato") #Need to add UI that uses gets.chomp
# puts "Now it's time to guess!" 
# until @is_game_over
# 	puts "Please submit a letter"
