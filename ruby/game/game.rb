
class Game 
	attr_accessor :word 
	attr_reader :dash_array

	def initialize(word)
		@word = word 
		@word_array = []
		@dash_array = []
		@guess_count = 0 
	end 

	def start 
		@word.each_char do |letter|
		@word_array << letter
		end

		@word_array.each do |letter|
		@dash_array << "-" 
		end
		puts
	  p @dash_array.join""
	end

	def guess_letter(guess)
		@guess_count +=1
		@word_array.each_index do |index|
			if @word_array[index] == guess 
			@dash_array [index]= guess 
			end
		end
		
		if @dash_array == @word_array
			puts "Wow! you did an amazing job."
			
	
		elsif @guess_count == @word.length
			if  @dash_array.include? ("-")
				puts "Bohoo you lost!"
				puts "The word is #{@word}"
			end
		end
	puts
	p @dash_array.join""	
	end 
end



#user interface 
puts "Welcome to the game!"

puts "PLAYER 1: Enter a word for PLAYER 2 to guess."
word = gets.chomp 
game = Game.new(word)
game.start


guess_count = 1

while guess_count <= word.length  
puts "PLAYER 2: Guess a letter."
guess = gets.chomp
game.guess_letter(guess)
guess_count +=1
end 