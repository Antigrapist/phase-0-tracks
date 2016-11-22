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

puts "What is the estimated budget in thousands of dollars?"
client_details[:budget_thousands] = gets.chomp.to_i

puts "Do they have kids? (y/n)"
if gets.chomp.downcase == "y"
	client_details[:kids] = true
else client_details[:kids] = false	
end

puts "What color scheme do they want?"
client_details[:colors] = gets.chomp

#Five questions should be enough. Let's print them out
p client_details


#Now to fix the data
puts "Which key value would you like to modify?"
updated_key = gets.chomp

if updated_key == "none"
	puts "Have a good day"
else
	puts "What would you like the value to be?"
	client_details[updated_key.to_sym] = gets.chomp 
# The new value will be a string, which is not ideal if updating :kids or :budget_thousands
# But it seems like overkill to test for those cases just to change the data type
	puts "The key #{updated_key} has been modified"
	p client_details
end
