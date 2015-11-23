# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode


#Initialize
  # Input: Number of sides
  # Output: Valid number of sides
  # Steps: IF sides are less than one, then invalid.

# Sides
  # Input: A valid die
  # Output: The number of sides
  # Steps: print the output


#roll
  # Input: a valid die
  # Output: Random integer
  # Steps: Get a random number between 1 and # of the sides

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#         if sides < 1
#       raise ArgumentError.new("must be a positive integer")
#     end
#     @sides = sides
#   end

#   def sides
#     # code goes here
#    @sides
#   end

#   def roll
#     # code goes here
#     rand(1..@sides)
#   end
# end



# 3. Refactored Solution
class Die
  def initialize(sides)
    # code goes here
      raise ArgumentError.new("must be a positive integer") if sides < 1
    @sides = sides
  end

  def sides
    # code goes here
   @sides
  end

  def roll
    # code goes here
    rand(1..@sides)
  end
end






# 4. Reflection

# What is an ArgumentError and why would you use one?

  # An ArgumentError is raised when the arguments are wrong.  For the die challenge we didn’t want zero or a negative number to be used as the argument.  So we raised an ArgumentError whenever zero or a negative is tried to be passed through.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

  # The only new method I used for this challenge is the rand(x) which returns a random integer/float based on the range passed through.

# What is a Ruby class?

  # A class is a blueprint from which individual objects are created.  For example, String is a class and “Hello”, “Hi”, and “Yo” are the objects.

# Why would you use a Ruby class?

  # We would use a class because it allows to create a new object and utilize the methods defined in the class.  So for example, in the challenge I just did.  I can start creating new dies and then I used the methods(roll and sides) that were defined in the class on them.

# What is the difference between a local variable and an instance variable?

  # Instance variables are defined with an ‘@‘ at the beginning.  The scope of local variables are only the current method that they are being defined in. The scope of an instance variable are all methods that are in a class.

# Where can an instance variable be used?

  # Instance variables can be used throughout all of the methods within a Class.