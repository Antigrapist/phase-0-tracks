require_relative 'Hangman'

describe Hangman do 
	let (:hangman) { Hangman.new }

	it "stores a word and outputs the number of guesses which is word length + 5" do
	expect(hangman.submit_puzzle_word("hats")).to eq 9
	end 

	it "can take take a word and correctly store the word, the output string of underscores and number of guesses" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.puzzle_word).to eq ["p", "o", "t", "a", "t", "o"]
		expect(hangman.word_in_progress).to eq ["_","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 11
	end

	it "a guess of more than one character gives an error" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.submit_guess("abc")).to eq "One letter at a time please"
	end

	it "after a word has been submitted, an incorrect guess gives a message and lowers the number of remaining guesses" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.submit_guess("z")).to eq "Sorry, that was incorrect"
		expect(hangman.letters_guessed).to eq ["z"]
		expect(hangman.word_in_progress).to eq ["_","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 10
	end

	it "after a word has been submitted, a duplicate guess gives an error" do
		hangman.submit_puzzle_word("potato")
		hangman.submit_guess("z")
		expect(hangman.submit_guess("z")).to eq "You already guessed this letter, please guess a new one"
		expect(hangman.word_in_progress).to eq ["_","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 10
	end

	it "a correct guess gives an error" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.submit_guess("p")).to eq "Correct!"
		expect(hangman.word_in_progress).to eq ["p","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 10
	end

end