require_relative 'Hangman'

describe Hangman do 
	let (:hangman) { Hangman.new }

	it "stores a word and outputs the number of guesses which is word length + 5" do
	expect(hangman.submit_puzzle_word("potatos")).to eq 12
	end 

	it "can recieve a guess with multiple letters and have it return an error" do
	expect(hangman.submit_guess("abc")).to eq "One letter at a time please"
	end

	it "can take take a word and correctly store the word, the output string of underscores and number of guesses" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.puzzle_word).to eq ["p", "o", "t", "a", "t", "o"]
		expect(hangman.word_in_progress).to eq ["_","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 11
	end
end