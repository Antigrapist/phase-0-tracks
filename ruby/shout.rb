# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	":) " + words + " :D"
#   end

# end

# p Shout.yell_angrily("GRRR")
# p Shout.yelling_happily("TRALALALALA")



module Shout
	def yell(words)
		puts "#{words.upcase}!!!"
	end
end


class Girl
	include Shout
end

class Angry_Mob
	include Shout
end

lucy = Girl.new
lucy.yell("i hate eating carrots")

rioters = Angry_Mob.new
rioters.yell "rabble rabble rabble"
