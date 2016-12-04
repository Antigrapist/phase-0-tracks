require_relative 'Hangman'

describe Hangman do 
	let (:hangman) { Hangman.new }

	it "stores a word and outputs the number of guesses" do
	expect(hangman.submit_puzzle_word("potato")).to eq 6
	end 
	
end