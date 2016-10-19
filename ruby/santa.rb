
class Santa 
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(141)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	def speak
		puts "Ho, ho, ho! Haaaaapy holidays!"
	end

	def eat_milk_and_cookies (cookie)
		puts "That was a good #{cookie}!"
	end

	def about 
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
	end

	def celebrate_birthday 
		@age = @age + 1
		puts "Santa is now #{@age} years old"
	end 

	def get_mad_at (reindeer)
		@reindeer_ranking.delete (reindeer)
		@reindeer_ranking.push (reindeer)
		puts @reindeer_ranking
	end 
end 

santas = []
example_genders = ["agender", "female", "bigender", "male", 
				   "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
					   "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|  
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

puts "Testing each Santa instance in the array to make sure it can speak ..."
santas.each do |person|
	person.speak
end 

puts "Selecting a specific Santa instance from the array ..."
santas[3].about 

puts "Testing .eat_milk_and_cookies ..."

index = 0 
while index < 3 
	santas[index].eat_milk_and_cookies("shortbread")
	index +=1

end


puts "Testing elebrate_birthday"
santas[0].celebrate_birthday
santas[0].celebrate_birthday



puts "other tests..."
santas[2].get_mad_at ("Cupid")
santas[1].gender = ("male")
puts santas[1].ethnicity 
p santas

#Automated Santa generator 
counter = 0
while counter < 100
Santa.new(example_genders.sample, example_ethnicities.sample).about
counter +=1
end

