# Our WordGame should 

# Create a WordGame class
# Methods to be created:
# Initialize
# user 1 enters word
# user 2 gets “—“ / dashes with number of letters in the word
# if user guesses a right letter it gets added to the “ —"

#RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe Game do 
  let(:game) { Game.new("beach") }

  # it "gets and stores a word given by the user" do 
  # 	game.enter_word("hello")
  # 	expect(game.enter_word).to eq "hello"
  # end

  it "starts dash array that matches the number of chars in the @word" do 
  	expect(game.start).to eq "-----"
  end

  it "allows a user to guess letters" do 
    expect(game.guess_letter("b")).to eq "b----"
end

  