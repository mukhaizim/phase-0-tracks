def make_alias
vowels_array = ["a", "e", "i", "o", "u"] 

alphabet = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n","p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

puts "Hi, give me your full name"
full_name = gets.chomp

while full_name !="quit"
name = full_name.chars
new_name = []
name.each do |letter|
			if letter == "z"
				new_name << "a"
			elsif alphabet.include?(letter) == true
				index = alphabet.index(letter)
				new_letter = alphabet[index+1]
				new_name << new_letter
				
			elsif vowels_array.include?(letter) == true
				index = vowels_array.index(letter)
				new_letter = vowels_array[index+1]
				new_name << new_letter
				
			else new_name << " "
			end
		end 
		str = new_name.join ""
		p str.split.reverse.join" " 
		puts
	puts "Give me another name"
	full_name = gets.chomp
	end
end

make_alias

