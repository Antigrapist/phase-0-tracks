class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	counter = 0
  	while counter < int
  		puts "Woof"
  		counter += 1
  	end
  end

  def roll_over
  	puts "Roll over"
  end

  def dog_years(year)
  	puts year*7
  	year*7
  end

  def sit
  	puts "The puppy is now sitting"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

# spot = Puppy.new
# spot.fetch("ball")
# spot.speak(1)
# spot.roll_over
# spot.dog_years(5)
# spot.sit



class Kitten

	def initialize
		puts "Meow"
	end

	def claw(int)
		counter = 0
		while counter < int
			puts "You have been clawed"
			counter += 1
		end
	end

	def sleep
		puts "Your kitten is too tired to play with you. Try again later"
	end


end

red = Kitten.new
red.claw(3)
red.sleep

cat_array = []
counter = 50
while counter > 0
	cat_array << Kitten.new
	counter -= 1
end

# cat_array[1].sleep
# cat_array[1].claw(1)


cat_array.each do |x|
	x.sleep
	x.claw(2)
end
