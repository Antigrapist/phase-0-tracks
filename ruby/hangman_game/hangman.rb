class Hangman
	attr_accessor :puzzle_word
	attr_accessor :guesses_remaining
	attr_accessor :word_in_progress


	def submit_puzzle_word(word)
		@puzzle_word = word
		@word_in_progress = []
		@guesses_remaining = @puzzle_word.length

		@puzzle_word.length.times do ||
			@word_in_progress << "_"
			
		end
		p @word_in_progress
		@guesses_remaining
	end



end




#driver code
puts "Please submit the word you want your opponent to guess"
game = Hangman.new
game.submit_puzzle_word("potato") #Need to add UI that uses gets.chomp
