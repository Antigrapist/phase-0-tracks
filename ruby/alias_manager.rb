# Get the name
# call a method that swaps the vowels.
	#Iterate through the string looking for vowels while using .downcase to avoid caps
	#just hard code all the vowel transitions, a>e, e>i etc
#then call a method that swaps the consonents 
	# Iterate through the downcased string 
	# if a consonent that's before a vowel, call .next on that letter twice 
	# hard code z > b
	# ignore vowels and blank spaces
	# otherwise, call .next on that letter once
# Now swap the position of the two words and then return the result

def next_vowel(name)
	counter = 0
	while counter < name.length
		if name[counter].downcase == 'a'
			name[counter] = "e"
		elsif name[counter].downcase == "e"
			name[counter] = "i"
		elsif name[counter].downcase == "i"
			name[counter] = "o"
		elsif name[counter].downcase == "o"
			name[counter] = "u"
		elsif name[counter].downcase == "u"
			name[counter] = "a"	
		end
		counter +=1
	end	
	name
end


def next_consonent(name)
	counter = 0
	while counter < name.length
		case name[counter].downcase
			when "d", "h", "n", "t" 
				name[counter]= name[counter].next.next
			when "z"
				name[counter] == "b"
			when "a", "e", "i", "o", "u", " "
			else
				name[counter]= name[counter].next
		end
		counter += 1	
	end
	name
end

def fake_name_maker(name)
	fake_name = next_vowel(next_consonent(name)).split(" ")
	fake_name[1] + " " + fake_name[0] 
end


# puts fake_name_maker("Felicia Torres")

fake_name_list = {}
continue = true
puts "Provide a name to have it converted into a code name. Type quit when finished"
while continue == true
	input=gets.chomp
	if input == "quit"
		continue = false
	else
		fake_name_list.merge! input.to_sym => fake_name_maker(input)
		puts fake_name_maker(input)
	end
end
p fake_name_list