#Enter a string 
#Advance every letter 1 letter forward 
def encrypt (string)
	index=0
	while index < string.length
		if string[index] == "z"
		   string[index] = "a"
		else   
	       string[index] = string[index].next
		end
		   
		index += 1
	end
	puts string
	return string
	
end

def decrypt (string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index=0
	
	finalResult = ""
	
	while index < string.length
		letterWereSearching = string[index]
		letterLocation = alphabet.index(letterWereSearching)
		previousLetterLocation = letterLocation - 1
		finalResult += alphabet[previousLetterLocation]
		
		index += 1	
	end
	puts finalResult
	
end

puts "Hello Agent, would you like to encrypt or decrypt your password?"
	what_do = gets.chomp
puts "Okay! Please type in the password."
	password = gets.chomp
	if what_do == "encrypt"
		encrypt("#{password}")
	elsif what_do == "decrypt"
		decrypt("#{password}")
	else
		puts "I don't think I understand what you're requesting."
	end

encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")

# this nested method works becuase we used retun which gives as a usable value 
puts decrypt(encrypt("swordfish"))
