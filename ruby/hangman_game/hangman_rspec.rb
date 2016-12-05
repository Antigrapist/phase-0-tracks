require_relative 'Hangman'

describe Hangman do 
	let (:hangman) { Hangman.new }

	it "can store a word and output the number of guesses i.e. word length + 5" do
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

	it "after a word has been submitted, can an incorrect guess give a message and lowers the number of remaining guesses" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.submit_guess("z")).to eq "Sorry, that was incorrect"
		expect(hangman.letters_guessed).to eq ["z"]
		expect(hangman.word_in_progress).to eq ["_","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 10
	end

	it "can a duplicate guess throw an error" do
		hangman.submit_puzzle_word("potato")
		hangman.submit_guess("z")
		expect(hangman.submit_guess("z")).to eq "You already guessed this letter, please guess a new one"
		expect(hangman.word_in_progress).to eq ["_","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 10
	end

	it "can a correct guess provide a correct game state" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.submit_guess("p")).to eq "Correct!"
		expect(hangman.letters_guessed).to eq ["p"]
		expect(hangman.word_in_progress).to eq ["p","_","_","_","_","_"]
		expect(hangman.guesses_remaining).to eq 10
	end

	it "can two correct guesses provide a correct game state" do
		hangman.submit_puzzle_word("potato")
		expect(hangman.submit_guess("p")).to eq "Correct!"
		expect(hangman.submit_guess("o")).to eq "Correct!"
		expect(hangman.letters_guessed).to eq ["p", "o"]
		expect(hangman.word_in_progress).to eq ["p","o","_","_","_","o"]
		expect(hangman.guesses_remaining).to eq 9
	end

end