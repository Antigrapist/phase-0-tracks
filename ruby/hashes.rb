# Ask the user for a client detail 
# Convert the output if needed and put the resulting value in the hash
# Repeat for each detail 
# 
# Print the hash 
# 
# Ask for hash updates
# 	If yes, then ask for a key value and then ask for the corrected data. Finally print the corrected hash
# 	If no changes, exit the program

client_details = { }


#Ask some questions, add data to the hash
puts "What is the client's name?"
client_details[:client_name] = gets.chomp

puts "Which rooms will we be changing?"
client_details[:rooms] = gets.chomp

puts "What is the estimated budget?"
client_details[:budget] = gets.chomp.to_i

puts "Do they have kids? (y/n)"
kids = gets.chomp
if kids.downcase == "y"
	client_details[:kids] = true
elsif kids == "n"
	client_details[:kids] = false	
end


puts "What colors do they prefer?"




p client_details