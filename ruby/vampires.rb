# puts "What is your name?"
# full_name=gets.chomp
# puts "How old are you?"
# age=gets.chomp
# puts "What year were you born?"
# birth_year=gets.chomp
# puts "Our company cafeteria serves garlic bread. Should we order some for you? (true, false)"
# wants_garlic=gets.chomp
# puts "Would you like to be enrolled in the company’s health insurance? (true, false)"
# wants_insurance=gets.chomp
full_name = "alex"
age = "10"
birth_year = "2004"
wants_garlic = false
wants_insurance = false

is_vampire="Results inconclusive"

if birth_year.to_i + age.to_i == 2016
	age_test=true
else
	age_test=false
end 

case 
	when age_test && (wants_garlic || wants_insurance)
		is_vampire = "Probably not a vampire."

	when !age_test && (!wants_garlic || !wants_insurance)
		is_vampire = "Probably a vampire"

	when !age_test && !wants_garlic && !wants_insurance
		is_vampire = "Almost certainly a vampire."
end

# when full_name.downcase ==  "drake cula" || "tu Fang"
# 	is_vampire= "Definitely a vampire."
# end

puts is_vampire
puts age_test
puts wants_garlic
puts wants_insurance