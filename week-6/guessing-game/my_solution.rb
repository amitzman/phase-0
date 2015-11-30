# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

#Initialize
  # Input:argument of answer
  # Output: instance variable of answer
  # Steps: create instance variable

#Guess
  #Create method with one argement
  #Create instance variable of that argument
  #IF guess == answer then return :correct
  #ELSIF guess > answer then return :high
  #ELSE reutrn :low

#Solved?
  #IF guess == answer return true
  #ELSE false


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

def guess(guess)
  @guess = guess

  if @guess > @answer
    :high
  elsif @guess == @answer
    :correct
  else
    :low
  end
end

def solved?
  if @guess == @answer
    true
  else
    false
  end
end



game = GuessingGame.new(15)
p game.guess(10)
p game.guess(18)
p game.guess(15)
p game.solved?



  # Make sure you define the other required methods, too
end




# Refactored Solution






# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  # I will use myself as an example.  We can use instance variables to define characteristics of myself, like name,age, hair color, gender, height etc.  Then methods let us modify these variables.  So when I get older, I can change my age every year, or I change my hair color to gray when I get older, then bald.


# When should you use instance variables? What do they do for you?

  # Instance variables are to be used insides classes.  They can used throughout a class and between all of the methods within a class.  These variables can be modified in different class methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  # Flow control is the way the code is directed.  If a condition is met, then run this code, if another condition is met, then run this code.  It’s kind of like running into several forks in the roads until reaching a final destination.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  # Symbols take up less memory, so since it’s possible for several wrong guesses, it would take up less memory returning a symbol.