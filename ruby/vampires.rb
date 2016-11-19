puts "How many employees will be processed?"
employee_total=gets.chomp.to_i

counter = 0

while counter < employee_total

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

	#it's a lot faster to test using preset variables rather than typing them out each time
	# full_name = "alex"
	# age = 10
	# birth_year = 2006
	# wants_garlic = true
	# wants_insurance = false

	if wants_garlic == "y"
		wants_garlic = true
	elsif wants_garlic == "n"
		wants_garlic = false
	end

	if wants_insurance == "y"
		wants_insurance = true
	elsif wants_insurance == "n"
		wants_insurance = false
	end
	#asking for true/false was causing problems in my testing


	if birth_year + age != 2016
		age_test = false
	else
		age_test = true
	end 
	 

	is_vampire="Results inconclusive"



	case 
		when age_test && (wants_garlic || wants_insurance)
			is_vampire = "probably not a vampire."

		when !age_test && (!wants_garlic && !wants_insurance)
		is_vampire = "almost certainly a vampire."

		when !age_test && (!wants_garlic || !wants_insurance)
			is_vampire = "probably a vampire"
	end

	
	if full_name.downcase == "drake cula"
	 	is_vampire = "definitely a vampire."
	elsif full_name.downcase == "tu fang"
		is_vampire = "definitely a vampire."
	end

	continue_allergy_test = true
	while continue_allergy_test == true
		puts  "Do you have any allegies? Please list one at a time, or type done to exit"
		allergy=gets.chomp
		if allergy.downcase == "sunshine"
			is_vampire = "probably a vampire"
			continue_allergy_test = false
		elsif allergy.downcase == "done"
			continue_allergy_test = false
		end
	end 


	puts "#{full_name} is #{is_vampire}" 
	# puts full_name
	# puts age_test
	# puts wants_garlic
	# puts wants_insurance
	# puts age
	# puts birth_year

	counter+=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."