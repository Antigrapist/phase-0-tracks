puts "What is your name?"
full_name=gets.chomp
puts "How old are you?"
age=gets.chomp
puts "What year were you born?"
birth_year=gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? (true, false)"
wants_garlic=gets.chomp
puts "Would you like to be enrolled in the company’s health insurance? (true, false)"
wants_insurance=gets.chomp

is_vampire="Results inconclusive"

if birth_year + age == 2016
	age_test=true
else
	age_test=false
end 

if age_test && (wants_garlic ||wants_insurance)
	is_vampire="Probably not a vampire."
end
if !age_test && !(wants_garlic ||wants_insurance)
	is_vampire="Probably a vampire"
end
if !age_test && !wants_garlic && !wants_insurance
	is_vampire="Almost certainly a vampire."
end
#if full_name.downcase ==  "drake cula" || "tu Fang"
#	is_vampire= "Definitely a vampire."
#end

puts is_vampire