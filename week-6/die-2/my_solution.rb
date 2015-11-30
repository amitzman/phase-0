# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

#Initialize
  # Input: An array of strings
  # Output: ArgumentError if the array is empty.
  # Steps: IF array length is less than 1, then raise an arguement error

#Sides
  #Find the length of the array

#Roll
  #Return a random side


# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new("List must contain one side") if labels.length < 1
#     @labels = labels

#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     if @labels.length == 1
#       @labels[0]
#     else
#       @labels.shuffle[0]
#     end

#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("List must contain one side") if labels.length < 1
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.shuffle[0]
  end
end


# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  # Main difference was that this die class passed through an argument of an array with each element being a side.  Whereas the last one, we just passed through an integer being the number of the sides.  Same logic applied applied for this one to work.

# What does this exercise teach you about making code that is easily changeable or modifiable?

  # Pretty much we can have the same methods for different classes.


# What new methods did you learn when working on this challenge, if any?
  # I didn’t learn about any new methods in this challenge.  Just familiarized myself more with the shuffle method on an array.

# What concepts about classes were you able to solidify in this challenge?

  # Raising an argument.  The last die challenge was the only time I used it before.  Was good to have more practice.