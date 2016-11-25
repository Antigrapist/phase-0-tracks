# Get the name
# split the first and last names into different variables. Use .downcase in here to avoid capital letters
# For each word, call a method that swaps the vowels.
	#Iterate through the string looking for vowels and changing them 
	#Could hard code all five vowels
#Now call a method that swaps the consonents 
	# Iterate through the string, if a consonent, look up it's place in the sting of consonents add 1 to that number aand then return that letter
	# hard code z > b
#

def next_vowel(name)
	counter = 0
	while counter < word.length
		if word[counter] == 'a'
			word[counter] = "e"
		elsif word[counter] == "e"
			word[counter] = "i"
		elsif word[counter] == "i"
			word[counter] = "o"
		elsif word[counter] == "o"
			word[counter] = "u"
		elsif word[counter] == "u"
			word[counter] = "a"	
		end

		counter +=1
	end	
end

def next_consonent(name)
	counter = 0
	while counter < word.length


		counter += 1
	end	
end

def fake_name_maker(name)
	next_vowel(name.downcase)
	next_consonent(name.downcase)
	name.split(' ')
	fake_name = name[1] +" "+name[0] 
	fake_name
end


