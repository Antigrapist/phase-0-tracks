require_relative 'Hangman'

describe Hangman do 
	let (:hangman) { Hangman.new }

	it "stores a word and outputs the number of guesses" do
	expect(hangman.submit_puzzle_word("potato")).to eq 6
	end 

	it "Make a guess with multiple letters and have it return an error" do
	expect(hangman.submit_guess("abc")).to eq "One letter at a time please"
	end
	
end