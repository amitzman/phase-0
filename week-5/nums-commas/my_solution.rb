# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? - Input is an integer
  # -Input is an integer

# What is the output? (i.e. What should the code return?)
  # - Output is a string of the number with commas

# What are the steps needed to solve the problem?
#convert the input to a string
#Then convert the string into an array
#decide how many commas are neccessary.
  # - No commas for under 4 digits
  # - 1 comma for 4, 5, and 6 digits
  # - 2 commas for 7, 8, 9 digits
  # - 3 commas for 10, 11, 12 digits
#Insert a comma every -4 elements of the array.
#Convert the array back to a string


# 1. Initial Solution
# def separate_comma(number)
# num = number.to_s.split('')
# num_commas = num.length.to_f / 3.0

#   if num.length < 4
#     return num.join('')
#   else
#     i =-4
#     (num_commas.ceil.to_i - 1).times do
#       num.insert(i, ',')
#       i += -4
#     end
#   end
#   return num.join('')
# end
# puts separate_comma(1000000)




# 2. Refactored Solution
def separate_comma(number)
num = number.to_s.split('')
num_commas = (num.length.to_f / 3.0).ceil.to_i - 1

    i =-4
    (num_commas).times do
      num.insert(i, ',')
      i += -4
    end
  return num.join('')
end
puts separate_comma(10000000000000000)


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

  # My process was to define an input and what my desired result to be.  Then from there I did some pretty general steps to take to get the end result.  Then went back through each step to add more detail to how I was going to achieve that step.


# Was your pseudocode effective in helping you build a successful initial solution?

  # Yeah, it helped for an initial solution and helped pass the tests.  However, my initial solution wouldn’t have worked for much larger numbers, like numbers that needed more than three commas.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

  # New method I used was the .ceil which is short for ceiling.  What this this does is round a float up to the nearest integer.  I used this to help me determine how many commas are necessary.  This changed it significantly because it finally helped me get a better way of getting the number of commas.  At first I had a long series of IF and ELSIF statements for determining the number of commas and this method made the code much more cleaner and shorter.

# How did you initially iterate through the data structure?

  # I used the .times iterator to go through the array to add commas every [-4] element.  I researched and tried using the .each_slice method.  I came close to successfully using it, but couldn’t quite get there.

# Do you feel your refactored solution is more readable than your initial solution? Why?

  # I made it a little more readable.  Was able to create a variable which helped clean up .times piece of code.