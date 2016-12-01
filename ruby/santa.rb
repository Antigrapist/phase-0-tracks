class Santa

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts  "That was a good #{cookie}!" 
	end

	def celebrate_birthday
		age +=1
	end

	def get_mad_at(bad_raindeer)
		reindeer_ranking.delete_if { |x| x = bad_raindeer }
		reindeer_ranking.insert(-1, bad_raindeer)
	end

	def gender=(new_gender)
		@gender = new_gender
	end

end




santas = []

santas << Santa.new("m", "old white dude")
santas << Santa.new("f", "NA")
p santas
