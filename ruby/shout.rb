module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "Yey!" + " :)"
  end
end

class Woman
	include Shout
end

class Man
	include Shout
end

woman = Woman.new 
puts woman.yelling_happily("I did it!")

man = Man.new 
puts man.yell_angrily("Stupid")




# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "Yey!" + " :)"
#   end
# end

# puts Shout.yell_angrily("stupid")
# puts Shout.yelling_happily("I did it!")


