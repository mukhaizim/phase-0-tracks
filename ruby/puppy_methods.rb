class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    puts "woof! "  * number.to_i  
  end

  def roll_over
    puts "*rolls over*"
  end

 def dog_years(human)
 	dog_years = human.to_i + 7
    puts dog_years
  end

def melt_heart
    puts "@ Puppy eyes @"
  end

def initialize
    puts "Initializing new puppy instance ..."
  end

end

Puppy.new.fetch("ball")
#OR the other way 
# twinkle = Puppy.new
# twinkle.fetch("ball")

Puppy.new.speak(3)

Puppy.new.roll_over
Puppy.new.dog_years(9)
Puppy.new.melt_heart

puts 
puts 

class Sweaters

	def buy(number)
		puts "Congratulations, you just bought " + number.to_s + " new sweaters!"
	end

	def fold
		puts "Your sweaters have been magically folded and your closet is now orgnized, yey!"
	end

	def initialize
    puts "Initializing new sweaters instance ..."
    end

end

Sweaters.new.buy(5)

sweaters_array =[]
counter = 0 
while counter < 50   
	sweaters_array << Sweaters.new 
	counter +=1
end

sweaters_array.each {|item| puts item.fold}

sweaters_array.each {|item| puts item.buy(2)}
















