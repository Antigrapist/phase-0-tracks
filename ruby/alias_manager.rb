# Get the name
# split the first and last names into different variables. Use .downcase to avoid capital letters
# For each name, call a method that swaps the vowels.
	#Iterate through the string looking for vowels and changing them 
	#Could hard code all five vowels
#Now call a method that swaps the consonents 
	# Iterate through the string, if a consonent, look up it's place in the string of consonents add 1 to that number and then return that letter
	# hard code z > b
#

def next_vowel(name)
	counter = 0
	while counter < name.length
		if name[counter] == 'a'
			name[counter] = "e"
		elsif name[counter] == "e"
			name[counter] = "i"
		elsif name[counter] == "i"
			name[counter] = "o"
		elsif name[counter] == "o"
			name[counter] = "u"
		elsif name[counter] == "u"
			name[counter] = "a"	
		end




		counter +=1
	end	
	name
end

# def next_consonent(name)
# 	counter = 0
# 	while counter < name.length
# 		if name[counter] == "d" || "h" || "n" || "t"
# 			name[counter]= name[counter].next.next
# 		elsif name[counter] == "z"
# 			name[counter] == "b"
# 		elsif name[counter] == "a" || "e" || "i" || "o" || "u"
				
# 		else
# 			name[counter]= name[counter].next
# 		end
# 		counter += 1	
# 	end
# 	name
# end

def fake_name_maker(name)
	next_vowel(name.downcase)
	next_consonent(name.downcase)
	name.split(' ')
	fake_name = name[1] +" "+name[0] 
	fake_name
end


puts next_vowel("tomato")