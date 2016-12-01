class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts  "That was a good #{cookie}!" 
	end

	def celebrate_birthday
		@age +=1
	end

	def get_mad_at(bad_raindeer)
		@reindeer_ranking.delete_if { |x| x == bad_raindeer }
	 	@reindeer_ranking.insert(-1, bad_raindeer)
	end

end




santas = []

santas << Santa.new("m", "old white dude")
santas << Santa.new("f", "NA")

santas[1].gender = ("kakuro")
santas[0].get_mad_at("Dancer")
santas[1].celebrate_birthday
puts santas[1].age
p santas