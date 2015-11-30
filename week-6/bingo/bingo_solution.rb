# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #Choose at random a number 0 through 4.  This will determine which letter.  0-B, 1-I, 2-N, 3-G, 4-0
  #Random number between 1 and 100.

# Check the called column for the number called.
  #fill in the outline here
  #The letter will tell us which element of each sub-array to check.

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #IF the number in that column is == to random number(1..100)then replace that number with 'X'

# Display a column to the console
  #fill in the outline here
  #Print out nth-element of the array based on which letter was chosen.

# Display the board to the console (prettily)
  #fill in the outline here
  #Print out each sub array.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letter = [0,1,2,3,4].shuffle[0]
#     @number = rand(1..100)

#     case @letter
#     when 0
#       p "B#{@number}"
#     when 1
#       p "I#{@number}"
#     when 2
#       p "N#{@number}"
#     when 3
#       p "G#{@number}"
#     else
#       p "O#{@number}"
#     end
#   end

#   def check
#     @bingo_board.each do |sub_array|
#       if sub_array[@letter] == @number
#         sub_array[@letter] = "X"
#       end
#     end
#   end




#   def column
#     @bingo_array = ["B", 'I', 'N', 'G','O']
#     puts "Column #{@bingo_array[@letter]}:"
#     @bingo_board.each do |sub_array|
#       p sub_array[@letter]
#     end
#   end

#   def display
#     p " B   I   N  G   O"
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end
# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_array = ["B", 'I', 'N', 'G','O']
  end

  def call
    @letter = [0,1,2,3,4].shuffle[0]
    @number = rand(1..100)
    p "Do you have #{@bingo_array[@letter]}#{@number}?"

  end

  def check
    @bingo_board.each do |sub_array|
      sub_array[@letter] = "X" if sub_array[@letter] == @number
    end
  end

  def display_column
    puts "Column #{@bingo_array[@letter]}:"
    @bingo_board.each {|sub_array| p sub_array[@letter]}
  end

  def display_board
    p " B   I   N  G   O"
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display_column
new_game.display_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  # Wasn’t too hard with the outline that was already provided.  Having a step by step outline makes writing and researching the code much more easier.

# What are the benefits of using a class for this challenge?

  # Being able to use instance variables which makes it much easier to maniuplate the data.

# How can you access coordinates in a nested array?

  # array[element_index][element_index] and so on.

# What methods did you use to access and modify the array?

  # I used the each iterator to loop through the array and sub-arrays.  Used their element index numbers to specify which elements to modify.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  # Didn’t use it, but .with_index is a new method I learned about while researching through the Ruby Docs.  Looks like it  lets us manipulate the values based on index numbers.  So if we wanted to modify every even element number then we could that.

# How did you determine what should be an instance variable versus a local variable?

  # If a variable was going to be used in more than one method of the class then I decided to use an instance variable.

# What do you feel is most improved in your refactored solution?

  # Was able to refactor the case statement for returning which letter it is.  Makes it more simple.