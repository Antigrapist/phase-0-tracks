puts "What is your name?"
full_name=gets.chomp
puts "How old are you?"
age=gets.chomp.to_i
puts "What year were you born?"
birth_year=gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y, n)"
wants_garlic=gets.chomp
puts "Would you like to be enrolled in the company’s health insurance? (y, n)"
wants_insurance=gets.chomp

#it's a lot faster to test using set variables rather than typing them out each time
# full_name = "alex"
# age = 10
# birth_year = 2006
# wants_garlic = true
# wants_insurance = false
if wants_garlic == "y"
	wants_garlic = true
else
	wants_garlic = false
end

if wants_insurance == "y"
	wants_insurance = true
else
	wants_garlic = false
end


is_vampire="Results inconclusive"

if birth_year + age == 2016
	age_test=true
else
	age_test=false
end 

case 
	when age_test && (wants_garlic || wants_insurance)
		is_vampire = "Probably not a vampire."

	when !age_test && !wants_garlic && !wants_insurance
	is_vampire = "Almost certainly a vampire."

	when !age_test && (!wants_garlic || !wants_insurance)
		is_vampire = "Probably a vampire"


end

#I tried to do the name comparsion in the case using 'when' but it didn't seem to work that way :/
if full_name.downcase == "drake cula"
 	is_vampire = "Definitely a vampire."
elsif full_name.downcase == "tu fang"
	is_vampire = "Definitely a vampire."
end

puts is_vampire
puts full_name
puts age_test
puts wants_garlic
puts wants_insurance
puts age
puts birth_year