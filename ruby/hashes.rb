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

puts "What is the client's name?"
client_details[:client_name] =gets.chomp

p client_details